import 'package:dartz/dartz.dart' as dartz;
import 'package:faker/faker.dart' hide Address;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../../core/models/address/address.dart';
import '../../../../core/models/customer/customer.dart';
import '../../../../core/models/value_object/value_object.dart';
import '../../../../core/repository.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/scaffold/nav/nav.dart';
import '../../../../core/scaffold/view/base_scaffold.dart';
import '../../../../core/spec/data/spec_repository.dart';
import '../../../../core/table-builder/controller/table_builder_bloc/table_builder_bloc.dart';
import '../../../../core/table-builder/view/actions/active_filters.dart';
import '../../../../core/table-builder/view/table_builder/table_builder.dart';
import '../../../../core/widgets/wip_overlay.dart';
import '../../../../injection.dart';
import '../../../auth/data/auth.dart';
import '../../controller/customers_bloc/customers_bloc.dart';
import '../widgets/customer_detail_modal.dart';
import 'customers_table.dart';
import 'table_actions.dart';

class CustomersPage extends StatefulWidget {
  final Auth auth;
  const CustomersPage(this.auth, {super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  late final CustomersBloc _bloc;
  late final TableBuilderBloc<Customer> customersTableBloc;

  @override
  void didChangeDependencies() {
    final specOption = sl<SpecRepository>().customersPageSpec;
    customersTableBloc = customersIndexTableBloc(
      labels: context.localizationLabels,
      specOption: specOption.fold(
        () => dartz.none(),
        (spec) => dartz.some(spec.tableSpec),
      ),
    );

    _bloc = CustomersBloc(
      sl(),
      sl(),
      sl(),
    )..add(const CustomersEvent.started());

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;

    return BlocProvider.value(
      value: _bloc,
      child: MultiBlocListener(
        listeners: [
          // BlocListener<CustomersBloc, CustomersState>(
          //   listenWhen: (previous, current) => previous.tags != current.tags,
          //   listener: (context, state) {
          //     customersTableBloc.add(
          //       TableBuilderEvent<CustomerModel,
          //           Tag>.updateCollectionFilterOptions(
          //         state.tags.toSet(),
          //         columnId: CustomerColumn.tags.name,
          //       ),
          //     );
          //   },
          // ),
          BlocListener<CustomersBloc, CustomersState>(
            listenWhen: (previous, current) =>
                previous.isLoading != current.isLoading,
            listener: (context, state) {
              sl<SpecRepository>().customersPageSpec.fold(
                    () => null,
                    (pageSpec) => customersTableBloc.add(
                      TableBuilderEvent.onSpecInput(
                        pageSpec.tableSpec,
                        importFilters: true,
                      ),
                    ),
                  );
            },
          ),
          BlocListener<CustomersBloc, CustomersState>(
            listenWhen: (previous, current) =>
                previous.isLoading != current.isLoading ||
                previous.selectedDepotOption != current.selectedDepotOption ||
                previous.customersUpdated != current.customersUpdated,
            listener: (context, state) {
              customersTableBloc.add(
                TableBuilderEvent.setItems(
                  state.customers,
                  // state.selectedDepotOption.fold(
                  //   () => state.customers,
                  //   (selectedDepot) {
                  //     return state.customers.where(
                  //       (e) {
                  //         return e.depotIds.contains(
                  //           selectedDepot.id.getOrCrash,
                  //         );
                  //       },
                  //     ).toList();
                  //   },
                  // ),
                ),
              );
            },
          ),
          BlocListener<CustomersBloc, CustomersState>(
            listenWhen: (previous, current) =>
                previous.isLoading != current.isLoading ||
                previous.selectedDepotOption != current.selectedDepotOption ||
                previous.customersUpdated != current.customersUpdated,
            listener: (context, state) {
              customersTableBloc.add(
                TableBuilderEvent.setItems(
                  state.customers,
                  // state.selectedDepotOption.fold(
                  //   () => state.customers,
                  //   (selectedDepot) {
                  //     return state.customers.where(
                  //       (e) {
                  //         return e.depotIds.contains(
                  //           selectedDepot.id.getOrCrash,
                  //         );
                  //       },
                  //     ).toList();
                  //   },
                  // ),
                ),
              );
            },
          ),
        ],
        child: BlocBuilder<CustomersBloc, CustomersState>(
          builder: (context, state) {
            final stopwatch = Stopwatch()..start();
            try {
              return BaseScaffold(
                widget.auth,
                title: labels.customersTitle,
                selectedItem: NavItem.customers,
                actions: const [
                  _AddFakeCustomers(),
                ],
                bottomNavigationBar: context.useMobileLayout
                    ? BottomAppBar(
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: BlocProvider.value(
                                  value: customersTableBloc,
                                  child: const ActiveFilters<Customer>(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : null,
                body: Padding(
                  padding: EdgeInsets.only(
                    bottom: context.useMobileLayout ? 12 : 24,
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (state.depots.isEmpty && !state.isLoading) ...[
                            const Spacer(),
                            Center(
                              child: Text(
                                labels.depotMustBeCreatedToAddCustomer,
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: FilledButton(
                                  onPressed: () =>
                                      AssetsPageRoute().go(context),
                                  child: Text(labels.updateAssets),
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                          if (state.depots.isNotEmpty || state.isLoading) ...[
                            Expanded(
                              child: Card.filled(
                                clipBehavior: Clip.hardEdge,
                                child: BlocProvider.value(
                                  value: customersTableBloc,
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(16),
                                        child: TableActions(),
                                      ),
                                      Expanded(
                                        child: TableBuilder<Customer>(
                                          showTopBorder: true,
                                          rowHeight:
                                              context.useMobileLayout ? 85 : 60,
                                          onRowTap: (customer) async =>
                                              await onCustomerOpened(
                                            customer,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                      WipOverlay(state.isLoading),
                    ],
                  ),
                ),
              );
            } finally {
              stopwatch.stop();
              print(
                'customers page build: ${stopwatch.elapsed.inMilliseconds}',
              );
            }
          },
        ),
      ),
    );
  }

  Future<void> onCustomerOpened(Customer customer) async {
    CustomerDetailModal(customer);
    // modal.updates.listen((updatedCustomer) {
    //   _bloc.add(
    //     CustomersEvent.onCustomerUpdated(
    //       updatedCustomer,
    //     ),
    //   );
    // });
    // final result = await modal.show();

    if (context.mounted) {
      // if (result is CustomerModel) {
      //   _bloc.add(
      //     CustomersEvent.onCustomerUpdated(
      //       result,
      //     ),
      //   );
      // } else if (result is CustomerDelete) {
      //   _bloc.add(
      //     CustomersEvent.onCustomerDeleted(
      //       result.customerId,
      //     ),
      //   );
      // }
    }
  }
}

class _AddFakeCustomers extends StatelessWidget {
  const _AddFakeCustomers();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        final customers = List.generate(
          10000,
          (index) {
            return Customer(
              id: Faker().guid.guid(),
              name: VString(faker.person.name()),
              address: Address(
                VString(faker.address.streetAddress()),
                LatLng(
                  faker.geo.latitude(),
                  faker.geo.longitude(),
                ),
              ),
              products: {},
            );
          },
        );
        sl<Repository>().createManyItems(
          Entities.customer,
          customers,
        );
      },
      child: const Text('Seed data'),
    );
  }
}
