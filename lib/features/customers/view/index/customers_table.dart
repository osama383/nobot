import 'package:flutter/material.dart';

import '../../../../core/columns/columns.dart';
import '../../../../core/columns/customer/customer_columns.dart';
import '../../../../core/localization/localization_labels.dart';
import '../../../../core/models/customer/customer.dart';
import '../../../../core/models/product/product.dart';
import '../../../../core/table-builder/controller/table_builder_bloc/table_builder_bloc.dart';
import '../../../../core/table-builder/domain/filter.dart';

TableBuilderBloc<Customer> customersIndexTableBloc({
  required List<Customer> customers,
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

List<TableColumn<Customer, Object>> _columns(
  LocalizationLabels labels,
) {
  final columns = CustomerColumns<Customer>(
    labels,
    prefixDateColumnsWithProduct: true,
    getCustomer: (Customer e) => e,
  );
  return [
    columns.name(const EdgeInsets.only(left: 16, right: 8)),
    columns.id(),
    columns.address(),
    columns.tags({}),
    columns.docs(),

    //uco
    columns.needForScheduling(
      Products.uco,
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
