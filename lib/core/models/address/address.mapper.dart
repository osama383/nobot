// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'address.dart';

class AddressMapper extends ClassMapperBase<Address> {
  AddressMapper._();

  static AddressMapper? _instance;
  static AddressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AddressMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Address';

  static VString _$formattedAddress(Address v) => v.formattedAddress;
  static const Field<Address, VString> _f$formattedAddress =
      Field('formattedAddress', _$formattedAddress);
  static LatLng _$location(Address v) => v.location;
  static const Field<Address, LatLng> _f$location =
      Field('location', _$location);

  @override
  final MappableFields<Address> fields = const {
    #formattedAddress: _f$formattedAddress,
    #location: _f$location,
  };

  static Address _instantiate(DecodingData data) {
    return Address(data.dec(_f$formattedAddress), data.dec(_f$location));
  }

  @override
  final Function instantiate = _instantiate;

  static Address fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Address>(map);
  }

  static Address fromJson(String json) {
    return ensureInitialized().decodeJson<Address>(json);
  }
}

mixin AddressMappable {
  String toJson() {
    return AddressMapper.ensureInitialized()
        .encodeJson<Address>(this as Address);
  }

  Map<String, dynamic> toMap() {
    return AddressMapper.ensureInitialized()
        .encodeMap<Address>(this as Address);
  }

  AddressCopyWith<Address, Address, Address> get copyWith =>
      _AddressCopyWithImpl(this as Address, $identity, $identity);
  @override
  String toString() {
    return AddressMapper.ensureInitialized().stringifyValue(this as Address);
  }

  @override
  bool operator ==(Object other) {
    return AddressMapper.ensureInitialized()
        .equalsValue(this as Address, other);
  }

  @override
  int get hashCode {
    return AddressMapper.ensureInitialized().hashValue(this as Address);
  }
}

extension AddressValueCopy<$R, $Out> on ObjectCopyWith<$R, Address, $Out> {
  AddressCopyWith<$R, Address, $Out> get $asAddress =>
      $base.as((v, t, t2) => _AddressCopyWithImpl(v, t, t2));
}

abstract class AddressCopyWith<$R, $In extends Address, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({VString? formattedAddress, LatLng? location});
  AddressCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AddressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Address, $Out>
    implements AddressCopyWith<$R, Address, $Out> {
  _AddressCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Address> $mapper =
      AddressMapper.ensureInitialized();
  @override
  $R call({VString? formattedAddress, LatLng? location}) =>
      $apply(FieldCopyWithData({
        if (formattedAddress != null) #formattedAddress: formattedAddress,
        if (location != null) #location: location
      }));
  @override
  Address $make(CopyWithData data) => Address(
      data.get(#formattedAddress, or: $value.formattedAddress),
      data.get(#location, or: $value.location));

  @override
  AddressCopyWith<$R2, Address, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AddressCopyWithImpl($value, $cast, t);
}
