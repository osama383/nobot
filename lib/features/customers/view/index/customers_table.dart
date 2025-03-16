import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/localization/localization_labels.dart';
import '../../../../core/models/customer/customer.dart';
import '../../../../core/models/product/product.dart';
import '../../../../core/spec/table_spec/table_spec.dart';
import '../../../../core/table-builder/controller/table_builder_bloc/table_builder_bloc.dart';
import '../../../../core/table-builder/domain/filter.dart';
import '../../../../core/tables/columns/columns.dart';
import '../../../../core/tables/columns/customer/customer_columns.dart';
import '../../../../core/tables/tables.dart';

TableBuilderBloc<Customer> customersIndexTableBloc({
  required LocalizationLabels labels,
  required Option<TableSpec> specOption,
}) {
  final bloc = TableBuilderBloc(
    tableId: Tables.customersIndex.name,
    builders: _columns(labels),
    theItems: <Customer>[],
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
        title: labels.products(Products.uco),
        isVisible: true,
      ),
      ColumnGroup(
        id: Columns.customerTrap.name,
        title: labels.products(Products.grease),
        isVisible: true,
      ),
    ],
  );

  specOption.fold(
    () => null,
    (spec) => bloc.add(
      TableBuilderEvent.onSpecInput(spec, importFilters: false),
    ),
  );

  return bloc;
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
    columns.address(),
  ];
}
