// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'assets.dart';

class AssetMapper extends ClassMapperBase<Asset> {
  AssetMapper._();

  static AssetMapper? _instance;
  static AssetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AssetMapper._());
      VehicleMapper.ensureInitialized();
      DepotMapper.ensureInitialized();
      ContainerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Asset';

  static String _$id(Asset v) => v.id;
  static const Field<Asset, String> _f$id = Field('id', _$id);

  @override
  final MappableFields<Asset> fields = const {
    #id: _f$id,
  };

  static Asset _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'Asset', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static Asset fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Asset>(map);
  }

  static Asset fromJson(String json) {
    return ensureInitialized().decodeJson<Asset>(json);
  }
}

mixin AssetMappable {
  String toJson();
  Map<String, dynamic> toMap();
  AssetCopyWith<Asset, Asset, Asset> get copyWith;
}

abstract class AssetCopyWith<$R, $In extends Asset, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id});
  AssetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class VehicleMapper extends SubClassMapperBase<Vehicle> {
  VehicleMapper._();

  static VehicleMapper? _instance;
  static VehicleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VehicleMapper._());
      AssetMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Vehicle';

  static String _$id(Vehicle v) => v.id;
  static const Field<Vehicle, String> _f$id = Field('id', _$id);
  static VString _$name(Vehicle v) => v.name;
  static const Field<Vehicle, VString> _f$name = Field('name', _$name);
  static String _$decalNumber(Vehicle v) => v.decalNumber;
  static const Field<Vehicle, String> _f$decalNumber =
      Field('decalNumber', _$decalNumber);

  @override
  final MappableFields<Vehicle> fields = const {
    #id: _f$id,
    #name: _f$name,
    #decalNumber: _f$decalNumber,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'vehicle';
  @override
  late final ClassMapperBase superMapper = AssetMapper.ensureInitialized();

  static Vehicle _instantiate(DecodingData data) {
    return Vehicle(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        decalNumber: data.dec(_f$decalNumber));
  }

  @override
  final Function instantiate = _instantiate;

  static Vehicle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Vehicle>(map);
  }

  static Vehicle fromJson(String json) {
    return ensureInitialized().decodeJson<Vehicle>(json);
  }
}

mixin VehicleMappable {
  String toJson() {
    return VehicleMapper.ensureInitialized()
        .encodeJson<Vehicle>(this as Vehicle);
  }

  Map<String, dynamic> toMap() {
    return VehicleMapper.ensureInitialized()
        .encodeMap<Vehicle>(this as Vehicle);
  }

  VehicleCopyWith<Vehicle, Vehicle, Vehicle> get copyWith =>
      _VehicleCopyWithImpl(this as Vehicle, $identity, $identity);
  @override
  String toString() {
    return VehicleMapper.ensureInitialized().stringifyValue(this as Vehicle);
  }

  @override
  bool operator ==(Object other) {
    return VehicleMapper.ensureInitialized()
        .equalsValue(this as Vehicle, other);
  }

  @override
  int get hashCode {
    return VehicleMapper.ensureInitialized().hashValue(this as Vehicle);
  }
}

extension VehicleValueCopy<$R, $Out> on ObjectCopyWith<$R, Vehicle, $Out> {
  VehicleCopyWith<$R, Vehicle, $Out> get $asVehicle =>
      $base.as((v, t, t2) => _VehicleCopyWithImpl(v, t, t2));
}

abstract class VehicleCopyWith<$R, $In extends Vehicle, $Out>
    implements AssetCopyWith<$R, $In, $Out> {
  @override
  $R call({String? id, VString? name, String? decalNumber});
  VehicleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VehicleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Vehicle, $Out>
    implements VehicleCopyWith<$R, Vehicle, $Out> {
  _VehicleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Vehicle> $mapper =
      VehicleMapper.ensureInitialized();
  @override
  $R call({String? id, VString? name, String? decalNumber}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (decalNumber != null) #decalNumber: decalNumber
      }));
  @override
  Vehicle $make(CopyWithData data) => Vehicle(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      decalNumber: data.get(#decalNumber, or: $value.decalNumber));

  @override
  VehicleCopyWith<$R2, Vehicle, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VehicleCopyWithImpl($value, $cast, t);
}

class DepotMapper extends SubClassMapperBase<Depot> {
  DepotMapper._();

  static DepotMapper? _instance;
  static DepotMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DepotMapper._());
      AssetMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Depot';

  static String _$id(Depot v) => v.id;
  static const Field<Depot, String> _f$id = Field('id', _$id);
  static VString _$name(Depot v) => v.name;
  static const Field<Depot, VString> _f$name = Field('name', _$name);
  static String _$address(Depot v) => v.address;
  static const Field<Depot, String> _f$address = Field('address', _$address);

  @override
  final MappableFields<Depot> fields = const {
    #id: _f$id,
    #name: _f$name,
    #address: _f$address,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'depot';
  @override
  late final ClassMapperBase superMapper = AssetMapper.ensureInitialized();

  static Depot _instantiate(DecodingData data) {
    return Depot(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        address: data.dec(_f$address));
  }

  @override
  final Function instantiate = _instantiate;

  static Depot fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Depot>(map);
  }

  static Depot fromJson(String json) {
    return ensureInitialized().decodeJson<Depot>(json);
  }
}

mixin DepotMappable {
  String toJson() {
    return DepotMapper.ensureInitialized().encodeJson<Depot>(this as Depot);
  }

  Map<String, dynamic> toMap() {
    return DepotMapper.ensureInitialized().encodeMap<Depot>(this as Depot);
  }

  DepotCopyWith<Depot, Depot, Depot> get copyWith =>
      _DepotCopyWithImpl(this as Depot, $identity, $identity);
  @override
  String toString() {
    return DepotMapper.ensureInitialized().stringifyValue(this as Depot);
  }

  @override
  bool operator ==(Object other) {
    return DepotMapper.ensureInitialized().equalsValue(this as Depot, other);
  }

  @override
  int get hashCode {
    return DepotMapper.ensureInitialized().hashValue(this as Depot);
  }
}

extension DepotValueCopy<$R, $Out> on ObjectCopyWith<$R, Depot, $Out> {
  DepotCopyWith<$R, Depot, $Out> get $asDepot =>
      $base.as((v, t, t2) => _DepotCopyWithImpl(v, t, t2));
}

abstract class DepotCopyWith<$R, $In extends Depot, $Out>
    implements AssetCopyWith<$R, $In, $Out> {
  @override
  $R call({String? id, VString? name, String? address});
  DepotCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DepotCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Depot, $Out>
    implements DepotCopyWith<$R, Depot, $Out> {
  _DepotCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Depot> $mapper = DepotMapper.ensureInitialized();
  @override
  $R call({String? id, VString? name, String? address}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (address != null) #address: address
      }));
  @override
  Depot $make(CopyWithData data) => Depot(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      address: data.get(#address, or: $value.address));

  @override
  DepotCopyWith<$R2, Depot, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DepotCopyWithImpl($value, $cast, t);
}

class ContainerMapper extends SubClassMapperBase<Container> {
  ContainerMapper._();

  static ContainerMapper? _instance;
  static ContainerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ContainerMapper._());
      AssetMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Container';

  static String _$id(Container v) => v.id;
  static const Field<Container, String> _f$id = Field('id', _$id);
  static VString _$name(Container v) => v.name;
  static const Field<Container, VString> _f$name = Field('name', _$name);
  static RealDouble _$height(Container v) => v.height;
  static const Field<Container, RealDouble> _f$height =
      Field('height', _$height);
  static Volume _$capacity(Container v) => v.capacity;
  static const Field<Container, Volume> _f$capacity =
      Field('capacity', _$capacity);

  @override
  final MappableFields<Container> fields = const {
    #id: _f$id,
    #name: _f$name,
    #height: _f$height,
    #capacity: _f$capacity,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'container';
  @override
  late final ClassMapperBase superMapper = AssetMapper.ensureInitialized();

  static Container _instantiate(DecodingData data) {
    return Container(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        height: data.dec(_f$height),
        capacity: data.dec(_f$capacity));
  }

  @override
  final Function instantiate = _instantiate;

  static Container fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Container>(map);
  }

  static Container fromJson(String json) {
    return ensureInitialized().decodeJson<Container>(json);
  }
}

mixin ContainerMappable {
  String toJson() {
    return ContainerMapper.ensureInitialized()
        .encodeJson<Container>(this as Container);
  }

  Map<String, dynamic> toMap() {
    return ContainerMapper.ensureInitialized()
        .encodeMap<Container>(this as Container);
  }

  ContainerCopyWith<Container, Container, Container> get copyWith =>
      _ContainerCopyWithImpl(this as Container, $identity, $identity);
  @override
  String toString() {
    return ContainerMapper.ensureInitialized()
        .stringifyValue(this as Container);
  }

  @override
  bool operator ==(Object other) {
    return ContainerMapper.ensureInitialized()
        .equalsValue(this as Container, other);
  }

  @override
  int get hashCode {
    return ContainerMapper.ensureInitialized().hashValue(this as Container);
  }
}

extension ContainerValueCopy<$R, $Out> on ObjectCopyWith<$R, Container, $Out> {
  ContainerCopyWith<$R, Container, $Out> get $asContainer =>
      $base.as((v, t, t2) => _ContainerCopyWithImpl(v, t, t2));
}

abstract class ContainerCopyWith<$R, $In extends Container, $Out>
    implements AssetCopyWith<$R, $In, $Out> {
  @override
  $R call({String? id, VString? name, RealDouble? height, Volume? capacity});
  ContainerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ContainerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Container, $Out>
    implements ContainerCopyWith<$R, Container, $Out> {
  _ContainerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Container> $mapper =
      ContainerMapper.ensureInitialized();
  @override
  $R call({String? id, VString? name, RealDouble? height, Volume? capacity}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (height != null) #height: height,
        if (capacity != null) #capacity: capacity
      }));
  @override
  Container $make(CopyWithData data) => Container(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      height: data.get(#height, or: $value.height),
      capacity: data.get(#capacity, or: $value.capacity));

  @override
  ContainerCopyWith<$R2, Container, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ContainerCopyWithImpl($value, $cast, t);
}
