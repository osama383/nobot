import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:nobot/core/localization/lang/en.dart';
import 'package:nobot/core/scaffold/view/base_scaffold.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import 'package:nobot/core/widgets/wip_overlay.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../../../../core/models/assets/assets.dart';
import '../../../../core/models/customer/customer.dart';
import '../../../../core/models/depot_access_policy/depot_access_policy.dart';
import '../../../../core/table-builder/controller/table_builder_bloc/table_builder_bloc.dart';
import '../../../../core/table-builder/view/actions/active_filters.dart';
import '../../../../core/table-builder/view/actions/mega_menu.dart';
import '../../../../core/table-builder/view/table_builder/table_builder.dart';
import '../../../../core/widgets/menu_chip.dart';
import '../../../../injection.dart';
import '../../../auth/data/auth.dart';
import '../../controller/customers_bloc/customers_bloc.dart';
import 'customers_table.dart';

part 'customers_table_actions.dart';

class CustomersPage extends StatefulWidget {
  final Auth auth;
  const CustomersPage(this.auth, {super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  late final CustomersBloc _bloc;
  final customersTableBloc = customersIndexTableBloc(
    labels: const EnLocalizations(),
    customers: [],
  );

  @override
  void initState() {
    super.initState();

    _bloc = CustomersBloc(
      sl(),
      sl(),
      sl(),
      sl(),
    )..add(const CustomersEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;

    return BlocProvider.value(
      value: _bloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<CustomersBloc, CustomersState>(
            listenWhen: (previous, current) => previous.tags != current.tags,
            listener: (context, state) {
              customersTableBloc.add(
                TableBuilderEvent<Customer, Tag>.updateCollectionFilterOptions(
                  state.tags.toSet(),
                  columnId: CustomerColumn.tags.name,
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
                  state.selectedDepotOption.fold(
                    () => state.customers,
                    (selectedDepot) {
                      return state.customers.where(
                        (e) {
                          return e.depotIds.contains(
                            selectedDepot.id.getOrCrash,
                          );
                        },
                      ).toList();
                    },
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
                  state.selectedDepotOption.fold(
                    () => state.customers,
                    (selectedDepot) {
                      return state.customers.where(
                        (e) {
                          return e.depotIds.contains(
                            selectedDepot.id.getOrCrash,
                          );
                        },
                      ).toList();
                    },
                  ),
                ),
              );
            },
          ),
        ],
        child: BlocBuilder<CustomersBloc, CustomersState>(
          builder: (context, state) {
            return BaseScaffold(
              title: labels.customersTitle,
              selectedItem: NavItems.customers,
              actions: [
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: AddCustomerButton(),
                ),
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
                                child: const ActiveFilters<CustomerModel>(),
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
                        const _AdminButtons(),
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
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Routes.assets.path);
                                },
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
                                      child: _TableActions(),
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
          },
        ),
      ),
    );
  }

  Future<void> onCustomerOpened(Customer customer) async {
    final modal = CustomerDetailModal(customer);
    modal.updates.listen((updatedCustomer) {
      _bloc.add(
        CustomersEvent.onCustomerUpdated(
          updatedCustomer,
        ),
      );
    });
    final result = await modal.show();

    if (context.mounted) {
      if (result is Customer) {
        _bloc.add(
          CustomersEvent.onCustomerUpdated(
            result,
          ),
        );
      } else if (result is CustomerDelete) {
        _bloc.add(
          CustomersEvent.onCustomerDeleted(
            result.customerId,
          ),
        );
      }
    }
  }
}

class AddCustomerButton extends StatelessWidget {
  const AddCustomerButton({super.key});

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<CustomersBloc, CustomersState>(
      builder: (context, state) {
        return Tooltip(
          message: state.depots.isEmpty
              ? labels.depotMustBeCreatedToAddCustomer
              : '',
          child: FilledButton.icon(
            icon: const Icon(Icons.add, size: 18),
            label: Text(labels.add),
            onPressed: state.depots.isEmpty
                ? null
                : () async {
                    final customersBloc = context.read<CustomersBloc>();
                    final response = await CreateCustomerForm(
                      depotsToBeAssignedToCustomer:
                          state.selectedDepotOption.fold(
                        () => state.depots,
                        (a) => {a},
                      ),
                    ).show();
                    if (response is Customer && context.mounted) {
                      customersBloc.add(
                        CustomersEvent.onCustomerCreated(response),
                      );
                      final result = await CustomerDetailModal(
                        response,
                      ).show();
                      if (result is Customer && context.mounted) {
                        customersBloc.add(
                          CustomersEvent.onCustomerUpdated(result),
                        );
                      }
                    }
                  },
          ),
        );
      },
    );
  }
}
