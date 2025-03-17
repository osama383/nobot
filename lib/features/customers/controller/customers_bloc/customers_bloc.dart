import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nobot/core/repository.dart';

import '../../../../core/models/assets/assets.dart';
import '../../../../core/models/customer/customer.dart';
import '../../../../core/models/value_object/value_object.dart';
import '../../../auth/data/auth.dart';
import '../../../../core/models/tag/tag.dart';
import '../../../../core/spec/data/spec_repository.dart';

part 'customers_bloc.freezed.dart';
part 'customers_event.dart';
part 'customers_state.dart';

class CustomersBloc extends Bloc<CustomersEvent, CustomersState> {
  CustomersBloc(
    Auth auth,
    Repository repo,
    SpecRepository specsRepo,
  ) : super(CustomersState.initial()) {
    on<CustomersEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          final customers =
              await repo.getCustomers<Customer>(Entities.customer);

          final depots = (await repo.getList<Asset>(Entities.asset))
              .whereType<Depot>()
              .toSet();

          // final currentUserDepotAccessPolicy =
          //     auth.currentUser!.depotAccessPolicy;
          // final depots = depotsOrFailure.getOrElse(() => {});
          // Option<Depot> depotFromId(String id) {
          //   return id.isEmpty
          //       ? none()
          //       : some(
          //           depots.singleWhere((e) => e.id == id),
          //         );
          // }

          // // final tagsOrFailure = await tagsRepo.listTags();
          // final defaultSpecOption = specsRepo.customersPageSpec;
          emit(
            state.copyWith(
              customers: customers,
              depots: depots,
              tags: {},
              selectedDepotOption: none(),
              customersUpdated: (state.customersUpdated + 1) % 3,
              isLoading: false,
              hasError: false,
            ),
          );
        },
        importCustomers: (event) async {
          // await customersRepo.importCustomers(
          //   event.customers,
          //   depotsToBeAssignedToCustomers: state.selectedDepotOption.fold(
          //     () => state.depots.toList(),
          //     (depot) => state.depots.where((e) => e.id == depot.id).toList(),
          //   ),
          // );
          // final customersOrFailure = await customersRepo.fetchCustomers();
          // emit(
          //   state.copyWith(
          //     customers: customersOrFailure.getOrElse(() => []),
          //     customersUpdated: (state.customersUpdated + 1) % 3,
          //   ),
          // );
        },
        onCustomerCreated: (event) {
          // final customers = List<CustomerModel>.from(state.customers);
          // customers.add(event.customer);
          // emit(
          //   state.copyWith(
          //     customers: customers,
          //     customersUpdated: (state.customersUpdated + 1) % 3,
          //   ),
          // );
        },
        onCustomerUpdated: (event) {
          // final customers = List<CustomerModel>.from(state.customers);
          // final index = customers.lastIndexWhere(
          //   (element) => element.id == event.customer.id,
          // );
          // customers[index] = event.customer;
          // emit(
          //   state.copyWith(
          //     customers: customers,
          //     customersUpdated: (state.customersUpdated + 1) % 3,
          //   ),
          // );
        },
        onDepotSelected: (event) async {
          emit(state.copyWith(selectedDepotOption: event.depotOption));
        },
        onCustomerDeleted: (event) {
          // final customers = List<CustomerModel>.from(state.customers);
          // customers.removeWhere((element) => element.id == event.customerId);
          // emit(
          //   state.copyWith(
          //     customers: customers,
          //     customersUpdated: (state.customersUpdated + 1) % 3,
          //   ),
          // );
        },
      );
    });
  }
}
