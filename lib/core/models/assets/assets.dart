import 'package:dart_mappable/dart_mappable.dart';
import 'package:nobot/core/models/firestore_document.dart';

import '../address/address.dart';
import '../real_number.dart';
import '../value_object/value_object.dart';
import '../volume/volume.dart';

part 'assets.mapper.dart';

@MappableClass(discriminatorKey: 'type')
sealed class Asset extends FirestoreDocument with AssetMappable {
  Asset({required super.id});

  @override
  String get collectionPath => 'assets';
}

@MappableClass(discriminatorValue: 'vehicle')
class Vehicle extends Asset with VehicleMappable {
  final VString name;
  final String decalNumber;

  Vehicle({
    required super.id,
    required this.name,
    required this.decalNumber,
  });
}

@MappableClass(discriminatorValue: 'depot')
class Depot extends Asset with DepotMappable {
  final VString name;
  final Address address;

  Depot({
    required super.id,
    required this.name,
    required this.address,
  });
}

@MappableClass(discriminatorValue: 'container')
class Container extends Asset with ContainerMappable {
  final VString name;
  final RealDouble height;
  final Volume capacity;

  Container({
    required super.id,
    required this.name,
    required this.height,
    required this.capacity,
  });
}
