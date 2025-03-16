import '../../../navigator_key.dart';
import '../../models/product/product.dart';
import '../../table-builder/domain/filter.dart';

enum Columns {
  tripGeneral,
  tripInfo,
  //customer columns
  customerGeneral,
  customerOil,
  customerTrap,

  //waypoint columns
  waypointGeneral,
  serviceOil,
  serviceTrap
}

final customerColumnGroups = [
  ColumnGroup(
    id: Columns.customerGeneral.name,
    title: labels.general,
    isVisible: true,
  ),
  ColumnGroup(
    id: Columns.customerOil.name,
    title: labels.products(Products.uco),
    isVisible: false,
  ),
  ColumnGroup(
    id: Columns.customerTrap.name,
    title: labels.products(Products.grease),
    isVisible: false,
  ),
];

final tripColumnGroups = [
  ColumnGroup(
    id: Columns.tripInfo.name,
    title: 'Route',
    isVisible: true,
  ),
  ColumnGroup(
    id: Columns.waypointGeneral.name,
    title: 'Stop',
    isVisible: true,
  ),
  ColumnGroup(
    id: Columns.serviceOil.name,
    title: 'Oil service',
    isVisible: false,
  ),
  // ColumnGroup(
  //   id: Columns.serviceTrap.name,
  //   title: 'Trap service',
  //   isVisible: false,
  // ),
];
