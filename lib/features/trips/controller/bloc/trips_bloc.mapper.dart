// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'trips_bloc.dart';

class TripsStateMapper extends ClassMapperBase<TripsState> {
  TripsStateMapper._();

  static TripsStateMapper? _instance;
  static TripsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TripsStateMapper._());
      TripMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TripsState';

  static List<Trip> _$trips(TripsState v) => v.trips;
  static const Field<TripsState, List<Trip>> _f$trips = Field('trips', _$trips);
  static bool _$isLoading(TripsState v) => v.isLoading;
  static const Field<TripsState, bool> _f$isLoading =
      Field('isLoading', _$isLoading);

  @override
  final MappableFields<TripsState> fields = const {
    #trips: _f$trips,
    #isLoading: _f$isLoading,
  };

  static TripsState _instantiate(DecodingData data) {
    return TripsState(
        trips: data.dec(_f$trips), isLoading: data.dec(_f$isLoading));
  }

  @override
  final Function instantiate = _instantiate;

  static TripsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TripsState>(map);
  }

  static TripsState fromJson(String json) {
    return ensureInitialized().decodeJson<TripsState>(json);
  }
}

mixin TripsStateMappable {
  String toJson() {
    return TripsStateMapper.ensureInitialized()
        .encodeJson<TripsState>(this as TripsState);
  }

  Map<String, dynamic> toMap() {
    return TripsStateMapper.ensureInitialized()
        .encodeMap<TripsState>(this as TripsState);
  }

  TripsStateCopyWith<TripsState, TripsState, TripsState> get copyWith =>
      _TripsStateCopyWithImpl(this as TripsState, $identity, $identity);
  @override
  String toString() {
    return TripsStateMapper.ensureInitialized()
        .stringifyValue(this as TripsState);
  }

  @override
  bool operator ==(Object other) {
    return TripsStateMapper.ensureInitialized()
        .equalsValue(this as TripsState, other);
  }

  @override
  int get hashCode {
    return TripsStateMapper.ensureInitialized().hashValue(this as TripsState);
  }
}

extension TripsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TripsState, $Out> {
  TripsStateCopyWith<$R, TripsState, $Out> get $asTripsState =>
      $base.as((v, t, t2) => _TripsStateCopyWithImpl(v, t, t2));
}

abstract class TripsStateCopyWith<$R, $In extends TripsState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Trip, TripCopyWith<$R, Trip, Trip>> get trips;
  $R call({List<Trip>? trips, bool? isLoading});
  TripsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TripsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TripsState, $Out>
    implements TripsStateCopyWith<$R, TripsState, $Out> {
  _TripsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TripsState> $mapper =
      TripsStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Trip, TripCopyWith<$R, Trip, Trip>> get trips =>
      ListCopyWith(
          $value.trips, (v, t) => v.copyWith.$chain(t), (v) => call(trips: v));
  @override
  $R call({List<Trip>? trips, bool? isLoading}) => $apply(FieldCopyWithData({
        if (trips != null) #trips: trips,
        if (isLoading != null) #isLoading: isLoading
      }));
  @override
  TripsState $make(CopyWithData data) => TripsState(
      trips: data.get(#trips, or: $value.trips),
      isLoading: data.get(#isLoading, or: $value.isLoading));

  @override
  TripsStateCopyWith<$R2, TripsState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TripsStateCopyWithImpl($value, $cast, t);
}
