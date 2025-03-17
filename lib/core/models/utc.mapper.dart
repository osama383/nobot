// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'utc.dart';

class UtcMapper extends ClassMapperBase<Utc> {
  UtcMapper._();

  static UtcMapper? _instance;
  static UtcMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UtcMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Utc';

  static DateTime _$value(Utc v) => v.value;
  static const Field<Utc, DateTime> _f$value = Field('value', _$value);

  @override
  final MappableFields<Utc> fields = const {
    #value: _f$value,
  };

  static Utc _instantiate(DecodingData data) {
    return Utc(data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static Utc fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Utc>(map);
  }

  static Utc fromJson(String json) {
    return ensureInitialized().decodeJson<Utc>(json);
  }
}

mixin UtcMappable {
  String toJson() {
    return UtcMapper.ensureInitialized().encodeJson<Utc>(this as Utc);
  }

  Map<String, dynamic> toMap() {
    return UtcMapper.ensureInitialized().encodeMap<Utc>(this as Utc);
  }

  UtcCopyWith<Utc, Utc, Utc> get copyWith =>
      _UtcCopyWithImpl(this as Utc, $identity, $identity);
  @override
  String toString() {
    return UtcMapper.ensureInitialized().stringifyValue(this as Utc);
  }

  @override
  bool operator ==(Object other) {
    return UtcMapper.ensureInitialized().equalsValue(this as Utc, other);
  }

  @override
  int get hashCode {
    return UtcMapper.ensureInitialized().hashValue(this as Utc);
  }
}

extension UtcValueCopy<$R, $Out> on ObjectCopyWith<$R, Utc, $Out> {
  UtcCopyWith<$R, Utc, $Out> get $asUtc =>
      $base.as((v, t, t2) => _UtcCopyWithImpl(v, t, t2));
}

abstract class UtcCopyWith<$R, $In extends Utc, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({DateTime? value});
  UtcCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UtcCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Utc, $Out>
    implements UtcCopyWith<$R, Utc, $Out> {
  _UtcCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Utc> $mapper = UtcMapper.ensureInitialized();
  @override
  $R call({DateTime? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  Utc $make(CopyWithData data) => Utc(data.get(#value, or: $value.value));

  @override
  UtcCopyWith<$R2, Utc, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UtcCopyWithImpl($value, $cast, t);
}
