import 'package:dart_mappable/dart_mappable.dart';

import '../value_object/value_object.dart';

part 'assets.mapper.dart';

@MappableClass()
sealed class Asset with AssetMappable {
  Asset();
}

@MappableClass()
class Vehicle with VehicleMappable {
  final VString name;
  final String decalNumber;

  Vehicle({required this.name, required this.decalNumber});
}

@MappableClass()
class Depot with DepotMappable {
  final VString name;
  final String address;

  Depot({required this.name, required this.address});
}
