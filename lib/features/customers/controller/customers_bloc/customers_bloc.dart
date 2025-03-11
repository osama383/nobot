import 'package:bloc/bloc.dart';
import 'package:cost_client/core/models/depot/depot.dart';
import 'package:cost_client/features/assets/data/depots_repository.dart';
import 'package:cost_client/generated/users.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/common/value_object/value_object.dart';
import '../../../../core/models/customer/customer.dart';
import '../../../../core/models/depot_access_policy/depot_access_policy.dart';
import '../../../../core/models/tag/tag.dart';
import '../../../auth/data/user_context.dart';
import '../../data/customers_repository.dart';
import '../../data/tags_repository.dart';

part 'customers_bloc.freezed.dart';
part 'customers_event.dart';
part 'customers_state.dart';

class CustomersBloc extends Bloc<CustomersEvent, CustomersState> {
  CustomersBloc(
    CustomersRepository customersRepo,
    DepotsRepository depotsRepo,
    UserContext userContext,
    TagsRepository tagsRepo,
  ) : super(CustomersState.initial()) {
    on<CustomersEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          final customersOrFailure = await customersRepo.fetchCustomers();
          final depotsOrFailure = await depotsRepo.fetchDepots();
          final user = await userContext.getCurrentUser();
          final currentUserDepotAccessPolicy = user.fold(
            (f) => const DepotAccessPolicy.unrestricted(),
            (user) => DepotAccessPolicy.fromDto(user.depotAccessPolicy),
          );
          final depots = depotsOrFailure.getOrElse(() => {});
          final tagsOrFailure = await tagsRepo.listTags();
          emit(
            state.copyWith(
              customers: customersOrFailure.getOrElse(() => []),
              depots: depots,
              tags: tagsOrFailure.getOrElse(() => {}),
              currentUserIsAdmin: user.fold(
                (f) => false,
                (user) => user.role == Role.ADMIN,
              ),
              currentUserDepotAccessPolicy: currentUserDepotAccessPolicy,
              selectedDepotOption: switch (currentUserDepotAccessPolicy) {
                DepotAccessUnrestricted() => none(),
                DepotAccessRestricted restriction =>
                  some(depots.singleWhere((e) => e.id == restriction.depotId)),
                DepotAccessPreferred preferrence =>
                  some(depots.singleWhere((e) => e.id == preferrence.depotId)),
              },
              customersUpdated: (state.customersUpdated + 1) % 3,
              isLoading: false,
              hasError: customersOrFailure.isLeft(),
            ),
          );
        },
        importCustomers: (event) async {
          await customersRepo.importCustomers(
            event.customers,
            depotsToBeAssignedToCustomers: state.selectedDepotOption.fold(
              () => state.depots.toList(),
              (depot) => state.depots.where((e) => e.id == depot.id).toList(),
            ),
          );
          final customersOrFailure = await customersRepo.fetchCustomers();
          emit(
            state.copyWith(
              customers: customersOrFailure.getOrElse(() => []),
              customersUpdated: (state.customersUpdated + 1) % 3,
            ),
          );
        },
        onCustomerCreated: (event) {
          final customers = List<CustomerModel>.from(state.customers);
          customers.add(event.customer);
          emit(
            state.copyWith(
              customers: customers,
              customersUpdated: (state.customersUpdated + 1) % 3,
            ),
          );
        },
        onCustomerUpdated: (event) {
          final customers = List<CustomerModel>.from(state.customers);
          final index = customers.lastIndexWhere(
            (element) => element.id == event.customer.id,
          );
          customers[index] = event.customer;
          emit(
            state.copyWith(
              customers: customers,
              customersUpdated: (state.customersUpdated + 1) % 3,
            ),
          );
        },
        onDepotSelected: (event) async {
          emit(state.copyWith(selectedDepotOption: event.depotOption));
        },
        onCustomerDeleted: (event) {
          final customers = List<CustomerModel>.from(state.customers);
          customers.removeWhere((element) => element.id == event.customerId);
          emit(
            state.copyWith(
              customers: customers,
              customersUpdated: (state.customersUpdated + 1) % 3,
            ),
          );
        },
      );
    });
  }
}
