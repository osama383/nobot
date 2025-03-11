import 'package:cost_client/core/localization/localization_labels.dart';
import 'package:cost_client/core/table_builder/domain/filter.dart';
import 'package:cost_client/core/columns/customer/customer_columns.dart';
import 'package:flutter/material.dart';

import '../../../../core/columns/columns.dart';
import '../../../../core/models/customer/customer.dart';
import '../../../../core/models/products.dart';
import '../../../../core/table_builder/controller/table_builder_bloc/table_builder_bloc.dart';

TableBuilderBloc<CustomerModel> customersIndexTableBloc({
  required List<CustomerModel> customers,
  required LocalizationLabels labels,
}) {
  return TableBuilderBloc(
    builders: _columns(labels),
    theItems: customers,
    theFreezedColumnsCount: 1,
    initialSort: (CustomerColumn.name.name, true),
    columnGroups: [
      ColumnGroup(
        id: Columns.customerGeneral.name,
        title: 'General',
        isVisible: true,
      ),
      ColumnGroup(
        id: Columns.customerOil.name,
        title: labels.products(Product.uco),
        isVisible: true,
      ),
      ColumnGroup(
        id: Columns.customerTrap.name,
        title: labels.products(Product.grease),
        isVisible: true,
      ),
    ],
  );
}

List<TableColumn<CustomerModel, Object>> _columns(
  LocalizationLabels labels,
) {
  final columns = CustomerColumns<CustomerModel>(
    labels,
    prefixDateColumnsWithProduct: true,
    getCustomer: (CustomerModel e) => e,
  );
  return [
    columns.name(const EdgeInsets.only(left: 16, right: 8)),
    columns.id(),
    columns.address(),
    columns.tags({}),
    columns.docs(),

    //uco
    columns.needForScheduling(
      Product.uco,
      groupId: Columns.customerOil.name,
      includeHelperText: true,
      title: labels.products(Product.uco),
      includeInactive: true,
      showNameInHeader: true,
    ),

    columns.ucoDue(),
    columns.ucoNext(),
    columns.ucoFillLevel().copyWith.column(isVisible: false),
    columns.ucoPercentFull().copyWith.column(isVisible: false),
    columns.ucoIndexPercent().copyWith.column(isVisible: false),
    columns.ucoCapacity().copyWith.column(isVisible: false),

    //grease
    columns.needForScheduling(
      Product.grease,
      groupId: Columns.customerOil.name,
      includeHelperText: true,
      title: labels.products(Product.grease),
      includeInactive: true,
      showNameInHeader: true,
    ),
    columns.greaseDue(),
    columns.greaseNext(),
    columns.greaseCapacity().copyWith.column(isVisible: false),

    //
    columns.created(),
  ];
}
