import 'package:dart_mappable/dart_mappable.dart';

part 'assets.mapper.dart';

@MappableClass()
sealed class Asset with AssetMappable {
  Asset();
}

@MappableClass()
class Vehicle with VehicleMappable {
  final String name;
  final String decalNumber;

  Vehicle({required this.name, required this.decalNumber});
}
