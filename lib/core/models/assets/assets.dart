import 'package:dart_mappable/dart_mappable.dart';

import '../real_number.dart';
import '../value_object/value_object.dart';
import '../volume/volume.dart';

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

@MappableClass()
class Container with ContainerMappable {
  final UniqueId id;
  final VString name;
  final RealDouble height;
  final Volume capacity;

  Container({
    required this.id,
    required this.name,
    required this.height,
    required this.capacity,
  });
}
