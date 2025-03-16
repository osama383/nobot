import 'package:flutter/material.dart';

import '../../../models/customer/customer.dart';
import '../../../table-builder/domain/filter.dart';
import '../columns.dart';
import '../../../localization/localization_labels.dart';

enum CustomerColumn {
  name,
  fill,
  vol,
  dueDate,
  nextService,
  lastService,
  customerId,
  tags,
  address,
  created,
}

class CustomerColumns<T extends Object> {
  final LocalizationLabels labels;
  final bool prefixDateColumnsWithProduct;
  final Customer Function(T object) getCustomer;

  CustomerColumns(
    this.labels, {
    required this.prefixDateColumnsWithProduct,
    required this.getCustomer,
  });

  PrimitiveColumn<T, String> name(EdgeInsets padding) {
    return PrimitiveColumn(
      showFilter: true,
      column: Columnar(
        id: CustomerColumn.name.name,
        groupId: Columns.customerGeneral.name,
        name: labels.name,
        decoration: ColumnDecoration(
          minWidth: 200,
          padding: padding,
          flex: 2,
        ),
        data: (e) => TableData(value: getCustomer(e).name.getOrCrash),
      ),
    );
  }

  PrimitiveColumn<T, String> address() {
    return PrimitiveColumn<T, String>(
      showFilter: true,
      column: Columnar(
        id: CustomerColumn.address.name,
        groupId: Columns.customerGeneral.name,
        name: labels.address,
        decoration: const ColumnDecoration(minWidth: 300, flex: 4),
        data: (e) => TableData(
          value: getCustomer(e).address.formattedAddress.getOrCrash,
        ),
      ),
    );
  }
}
