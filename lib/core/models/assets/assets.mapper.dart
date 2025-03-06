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
    }
    return _instance!;
  }

  @override
  final String id = 'Asset';

  @override
  final MappableFields<Asset> fields = const {};

  static Asset _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('Asset');
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
  $R call();
  AssetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class VehicleMapper extends ClassMapperBase<Vehicle> {
  VehicleMapper._();

  static VehicleMapper? _instance;
  static VehicleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VehicleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Vehicle';

  static String _$name(Vehicle v) => v.name;
  static const Field<Vehicle, String> _f$name = Field('name', _$name);
  static String _$decalNumber(Vehicle v) => v.decalNumber;
  static const Field<Vehicle, String> _f$decalNumber =
      Field('decalNumber', _$decalNumber);

  @override
  final MappableFields<Vehicle> fields = const {
    #name: _f$name,
    #decalNumber: _f$decalNumber,
  };

  static Vehicle _instantiate(DecodingData data) {
    return Vehicle(
        name: data.dec(_f$name), decalNumber: data.dec(_f$decalNumber));
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
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? decalNumber});
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
  $R call({String? name, String? decalNumber}) => $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (decalNumber != null) #decalNumber: decalNumber
      }));
  @override
  Vehicle $make(CopyWithData data) => Vehicle(
      name: data.get(#name, or: $value.name),
      decalNumber: data.get(#decalNumber, or: $value.decalNumber));

  @override
  VehicleCopyWith<$R2, Vehicle, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VehicleCopyWithImpl($value, $cast, t);
}
