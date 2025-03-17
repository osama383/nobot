import 'package:flutter/material.dart';

import '../../../models/customer/customer.dart';
import '../../../models/product/due_and_scheduled_combo.dart';
import '../../../models/product/product.dart';
import '../../../models/product/service_status.dart';
import '../../../models/utc.dart';
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

  CollectionColumn<T, DueAndNextCombo> needForScheduling(
    Products productType, {
    required String title,
    required bool includeHelperText,
    required bool includeInactive,
    required String groupId,
    required bool showNameInHeader,
  }) {
    return CollectionColumn(
      column: Columnar(
        id: '${productType.name} needForScheduling',
        groupId: groupId,
        name: title,
        showNameInHeader: showNameInHeader,
        decoration: ColumnDecoration(
          minWidth: !showNameInHeader ? 32 : 120,
          maxWidth: !showNameInHeader ? 32 : 120,
          padding: !showNameInHeader
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(horizontal: 8),
        ),
        data: (e) {
          final product = getCustomer(e).product(productType)!;
          return TableData(
            value: labels.needForScheduling(
              product.needForScheduling(),
              abrv: false,
            ),
            child: !includeHelperText
                ? Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: product.needForScheduling().color,
                        border: product.needForScheduling().color == null
                            ? Border.all()
                            : null,
                      ),
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: product.needForScheduling().color,
                          border: product.needForScheduling().color == null
                              ? Border.all()
                              : null,
                        ),
                      ),
                      if (includeHelperText)
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            labels.needForScheduling(
                              product.needForScheduling(),
                              abrv: true,
                            ),
                            style: product.status == ServiceStatus.active
                                ? null
                                : const TextStyle(color: Colors.grey),
                          ),
                        ),
                    ],
                  ),
          );
        },
      ),
      multiselectFilter: MultiselectFilter<T, DueAndNextCombo>(
        columnId: '${productType.name} needForScheduling',
        groupId: groupId,
        value: (e) =>
            {getCustomer(e).product(productType)!.needForScheduling()},
        options: includeInactive
            ? DueAndNextCombo.values.toSet()
            : (DueAndNextCombo.values.toSet()
              ..remove(DueAndNextCombo.inactive)),
        optionName: (combo) => labels.needForScheduling(combo, abrv: false),
        optionColor: (combo) => combo.color,
        filterIcon: !showNameInHeader ? const Icon(Icons.location_on) : null,
        filteredIcon:
            !showNameInHeader ? const Icon(Icons.where_to_vote) : null,
        includeEmptyOption: false,
        emptyOptionName: '',
      ),
    );
  }

  PrimitiveColumn<T, Utc> ucoDue() {
    return PrimitiveColumn(
      showFilter: true,
      column: Columnar(
        id: '${Products.uco.name} ${CustomerColumn.dueDate.name}',
        groupId: Columns.customerOil.name,
        name: prefixDateColumnsWithProduct
            ? '${labels.products(Products.uco)} ${labels.shortName(CustomerColumn.dueDate)}'
            : labels.shortName(CustomerColumn.dueDate),
        decoration: const ColumnDecoration(
          minWidth: 120,
          maxWidth: 120,
          padding: EdgeInsets.only(left: 16),
        ),
        textStyle: (e) => getCustomer(e).uco.status == ServiceStatus.active
            ? null
            : const TextStyle(color: Colors.grey),
        data: (e) => TableData.optionalDateOnly(
          getCustomer(e).uco.dueDateOption,
        ),
      ),
    );
  }

  PrimitiveColumn<T, Utc> ucoNext() {
    return PrimitiveColumn(
      showFilter: true,
      column: Columnar(
        id: '${Products.uco.name} ${CustomerColumn.nextService.name}',
        groupId: Columns.customerOil.name,
        name: prefixDateColumnsWithProduct
            ? '${labels.products(Products.uco)} ${labels.shortName(CustomerColumn.nextService)}'
            : labels.shortName(CustomerColumn.nextService),
        decoration: const ColumnDecoration(
          minWidth: 130,
          maxWidth: 130,
          padding: EdgeInsets.only(left: 16),
        ),
        textStyle: (e) => getCustomer(e).uco.status == ServiceStatus.active
            ? null
            : const TextStyle(color: Colors.grey),
        data: (e) => TableData.optionalDateOnly(
          getCustomer(e).uco.scheduledDateOption,
        ),
      ),
    );
  }

  PrimitiveColumn<T, Utc> ucoLast() {
    return PrimitiveColumn(
      showFilter: true,
      column: Columnar(
        id: '${Products.uco.name} ${CustomerColumn.lastService.name}',
        groupId: Columns.customerOil.name,
        name: prefixDateColumnsWithProduct
            ? '${labels.products(Products.uco)} ${labels.shortName(CustomerColumn.lastService)}'
            : labels.shortName(CustomerColumn.lastService),
        decoration: const ColumnDecoration(
          minWidth: 100,
          maxWidth: 100,
          padding: EdgeInsets.only(left: 16),
        ),
        textStyle: (e) => getCustomer(e).uco.status == ServiceStatus.active
            ? null
            : const TextStyle(color: Colors.grey),
        data: (e) => TableData.optionalDateOnly(
          getCustomer(e).uco.lastServiceOption,
        ),
      ),
    );
  }

  PrimitiveColumn<T, Utc> greaseDue() {
    return PrimitiveColumn(
      showFilter: true,
      column: Columnar(
        id: '${Products.grease.name} ${CustomerColumn.dueDate.name}',
        groupId: Columns.customerTrap.name,
        name: prefixDateColumnsWithProduct
            ? '${labels.products(Products.grease)} ${labels.shortName(CustomerColumn.dueDate)}'
            : labels.shortName(CustomerColumn.dueDate),
        decoration: const ColumnDecoration(
          minWidth: 120,
          maxWidth: 120,
          padding: EdgeInsets.only(left: 16),
        ),
        textStyle: (e) => getCustomer(e).grease.status == ServiceStatus.active
            ? null
            : const TextStyle(color: Colors.grey),
        data: (e) => TableData.optionalDateOnly(
          getCustomer(e).grease.dueDateOption,
        ),
      ),
    );
  }

  PrimitiveColumn<T, Utc> greaseNext() {
    return PrimitiveColumn(
      showFilter: true,
      column: Columnar(
        id: '${Products.grease.name} ${CustomerColumn.nextService.name}',
        groupId: Columns.customerTrap.name,
        name: prefixDateColumnsWithProduct
            ? '${labels.products(Products.grease)} ${labels.shortName(CustomerColumn.nextService)}'
            : labels.shortName(CustomerColumn.nextService),
        decoration: const ColumnDecoration(
          minWidth: 130,
          maxWidth: 130,
          padding: EdgeInsets.only(left: 16),
        ),
        textStyle: (e) => getCustomer(e).grease.status == ServiceStatus.active
            ? null
            : const TextStyle(color: Colors.grey),
        data: (e) => TableData.optionalDateOnly(
          getCustomer(e).grease.scheduledDateOption,
        ),
      ),
    );
  }

  PrimitiveColumn<T, Utc> greaseLast() {
    return PrimitiveColumn<T, Utc>(
      showFilter: true,
      column: Columnar(
        id: '${Products.grease.name} ${CustomerColumn.lastService.name}',
        groupId: Columns.customerTrap.name,
        name: prefixDateColumnsWithProduct
            ? '${labels.products(Products.grease)} ${labels.shortName(CustomerColumn.lastService)}'
            : labels.shortName(CustomerColumn.lastService),
        decoration: const ColumnDecoration(
          minWidth: 120,
          maxWidth: 120,
          padding: EdgeInsets.only(left: 16),
        ),
        textStyle: (e) => getCustomer(e).grease.status == ServiceStatus.active
            ? null
            : const TextStyle(color: Colors.grey),
        data: (e) => TableData.optionalDateOnly(
          getCustomer(e).grease.lastServiceOption,
        ),
      ),
    );
  }
}
