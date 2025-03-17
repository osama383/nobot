// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'service_grease.dart';

class TripStatusMapper extends EnumMapper<TripStatus> {
  TripStatusMapper._();

  static TripStatusMapper? _instance;
  static TripStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TripStatusMapper._());
    }
    return _instance!;
  }

  static TripStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TripStatus decode(dynamic value) {
    switch (value) {
      case 'draft':
        return TripStatus.draft;
      case 'scheduled':
        return TripStatus.scheduled;
      case 'inprogress':
        return TripStatus.inprogress;
      case 'completed':
        return TripStatus.completed;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TripStatus self) {
    switch (self) {
      case TripStatus.draft:
        return 'draft';
      case TripStatus.scheduled:
        return 'scheduled';
      case TripStatus.inprogress:
        return 'inprogress';
      case TripStatus.completed:
        return 'completed';
    }
  }
}

extension TripStatusMapperExtension on TripStatus {
  String toValue() {
    TripStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TripStatus>(this) as String;
  }
}

class ServiceGreaseMapper extends ClassMapperBase<ServiceGrease> {
  ServiceGreaseMapper._();

  static ServiceGreaseMapper? _instance;
  static ServiceGreaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServiceGreaseMapper._());
      TaskMapper.ensureInitialized();
      TaskStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServiceGrease';

  static TaskStatus _$status(ServiceGrease v) => v.status;
  static const Field<ServiceGrease, TaskStatus> _f$status =
      Field('status', _$status);
  static Volume _$capacity(ServiceGrease v) => v.capacity;
  static const Field<ServiceGrease, Volume> _f$capacity =
      Field('capacity', _$capacity);

  @override
  final MappableFields<ServiceGrease> fields = const {
    #status: _f$status,
    #capacity: _f$capacity,
  };

  static ServiceGrease _instantiate(DecodingData data) {
    return ServiceGrease(
        status: data.dec(_f$status), capacity: data.dec(_f$capacity));
  }

  @override
  final Function instantiate = _instantiate;

  static ServiceGrease fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServiceGrease>(map);
  }

  static ServiceGrease fromJson(String json) {
    return ensureInitialized().decodeJson<ServiceGrease>(json);
  }
}

mixin ServiceGreaseMappable {
  String toJson() {
    return ServiceGreaseMapper.ensureInitialized()
        .encodeJson<ServiceGrease>(this as ServiceGrease);
  }

  Map<String, dynamic> toMap() {
    return ServiceGreaseMapper.ensureInitialized()
        .encodeMap<ServiceGrease>(this as ServiceGrease);
  }

  ServiceGreaseCopyWith<ServiceGrease, ServiceGrease, ServiceGrease>
      get copyWith => _ServiceGreaseCopyWithImpl(
          this as ServiceGrease, $identity, $identity);
  @override
  String toString() {
    return ServiceGreaseMapper.ensureInitialized()
        .stringifyValue(this as ServiceGrease);
  }

  @override
  bool operator ==(Object other) {
    return ServiceGreaseMapper.ensureInitialized()
        .equalsValue(this as ServiceGrease, other);
  }

  @override
  int get hashCode {
    return ServiceGreaseMapper.ensureInitialized()
        .hashValue(this as ServiceGrease);
  }
}

extension ServiceGreaseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServiceGrease, $Out> {
  ServiceGreaseCopyWith<$R, ServiceGrease, $Out> get $asServiceGrease =>
      $base.as((v, t, t2) => _ServiceGreaseCopyWithImpl(v, t, t2));
}

abstract class ServiceGreaseCopyWith<$R, $In extends ServiceGrease, $Out>
    implements TaskCopyWith<$R, $In, $Out> {
  @override
  $R call({TaskStatus? status, Volume? capacity});
  ServiceGreaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ServiceGreaseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServiceGrease, $Out>
    implements ServiceGreaseCopyWith<$R, ServiceGrease, $Out> {
  _ServiceGreaseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServiceGrease> $mapper =
      ServiceGreaseMapper.ensureInitialized();
  @override
  $R call({TaskStatus? status, Volume? capacity}) => $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (capacity != null) #capacity: capacity
      }));
  @override
  ServiceGrease $make(CopyWithData data) => ServiceGrease(
      status: data.get(#status, or: $value.status),
      capacity: data.get(#capacity, or: $value.capacity));

  @override
  ServiceGreaseCopyWith<$R2, ServiceGrease, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServiceGreaseCopyWithImpl($value, $cast, t);
}

class WaypointMapper extends ClassMapperBase<Waypoint> {
  WaypointMapper._();

  static WaypointMapper? _instance;
  static WaypointMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WaypointMapper._());
      CustomerMapper.ensureInitialized();
      TaskMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Waypoint';

  static String _$id(Waypoint v) => v.id;
  static const Field<Waypoint, String> _f$id = Field('id', _$id);
  static String _$tripId(Waypoint v) => v.tripId;
  static const Field<Waypoint, String> _f$tripId = Field('tripId', _$tripId);
  static Customer _$customer(Waypoint v) => v.customer;
  static const Field<Waypoint, Customer> _f$customer =
      Field('customer', _$customer, hook: NullToMapHook());
  static List<Task> _$tasks(Waypoint v) => v.tasks;
  static const Field<Waypoint, List<Task>> _f$tasks = Field('tasks', _$tasks);

  @override
  final MappableFields<Waypoint> fields = const {
    #id: _f$id,
    #tripId: _f$tripId,
    #customer: _f$customer,
    #tasks: _f$tasks,
  };

  static Waypoint _instantiate(DecodingData data) {
    return Waypoint(
        id: data.dec(_f$id),
        tripId: data.dec(_f$tripId),
        customer: data.dec(_f$customer),
        tasks: data.dec(_f$tasks));
  }

  @override
  final Function instantiate = _instantiate;

  static Waypoint fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Waypoint>(map);
  }

  static Waypoint fromJson(String json) {
    return ensureInitialized().decodeJson<Waypoint>(json);
  }
}

mixin WaypointMappable {
  String toJson() {
    return WaypointMapper.ensureInitialized()
        .encodeJson<Waypoint>(this as Waypoint);
  }

  Map<String, dynamic> toMap() {
    return WaypointMapper.ensureInitialized()
        .encodeMap<Waypoint>(this as Waypoint);
  }

  WaypointCopyWith<Waypoint, Waypoint, Waypoint> get copyWith =>
      _WaypointCopyWithImpl(this as Waypoint, $identity, $identity);
  @override
  String toString() {
    return WaypointMapper.ensureInitialized().stringifyValue(this as Waypoint);
  }

  @override
  bool operator ==(Object other) {
    return WaypointMapper.ensureInitialized()
        .equalsValue(this as Waypoint, other);
  }

  @override
  int get hashCode {
    return WaypointMapper.ensureInitialized().hashValue(this as Waypoint);
  }
}

extension WaypointValueCopy<$R, $Out> on ObjectCopyWith<$R, Waypoint, $Out> {
  WaypointCopyWith<$R, Waypoint, $Out> get $asWaypoint =>
      $base.as((v, t, t2) => _WaypointCopyWithImpl(v, t, t2));
}

abstract class WaypointCopyWith<$R, $In extends Waypoint, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CustomerCopyWith<$R, Customer, Customer> get customer;
  ListCopyWith<$R, Task, TaskCopyWith<$R, Task, Task>> get tasks;
  $R call({String? id, String? tripId, Customer? customer, List<Task>? tasks});
  WaypointCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WaypointCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Waypoint, $Out>
    implements WaypointCopyWith<$R, Waypoint, $Out> {
  _WaypointCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Waypoint> $mapper =
      WaypointMapper.ensureInitialized();
  @override
  CustomerCopyWith<$R, Customer, Customer> get customer =>
      $value.customer.copyWith.$chain((v) => call(customer: v));
  @override
  ListCopyWith<$R, Task, TaskCopyWith<$R, Task, Task>> get tasks =>
      ListCopyWith(
          $value.tasks, (v, t) => v.copyWith.$chain(t), (v) => call(tasks: v));
  @override
  $R call(
          {String? id,
          String? tripId,
          Customer? customer,
          List<Task>? tasks}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (tripId != null) #tripId: tripId,
        if (customer != null) #customer: customer,
        if (tasks != null) #tasks: tasks
      }));
  @override
  Waypoint $make(CopyWithData data) => Waypoint(
      id: data.get(#id, or: $value.id),
      tripId: data.get(#tripId, or: $value.tripId),
      customer: data.get(#customer, or: $value.customer),
      tasks: data.get(#tasks, or: $value.tasks));

  @override
  WaypointCopyWith<$R2, Waypoint, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WaypointCopyWithImpl($value, $cast, t);
}

class TripMapper extends ClassMapperBase<Trip> {
  TripMapper._();

  static TripMapper? _instance;
  static TripMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TripMapper._());
      TripStatusMapper.ensureInitialized();
      WaypointMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Trip';

  static String _$id(Trip v) => v.id;
  static const Field<Trip, String> _f$id = Field('id', _$id);
  static VString _$name(Trip v) => v.name;
  static const Field<Trip, VString> _f$name = Field('name', _$name);
  static TripStatus _$status(Trip v) => v.status;
  static const Field<Trip, TripStatus> _f$status = Field('status', _$status);
  static List<Waypoint> _$waypoints(Trip v) => v.waypoints;
  static const Field<Trip, List<Waypoint>> _f$waypoints =
      Field('waypoints', _$waypoints, hook: NullToMapHook());

  @override
  final MappableFields<Trip> fields = const {
    #id: _f$id,
    #name: _f$name,
    #status: _f$status,
    #waypoints: _f$waypoints,
  };
  @override
  final bool ignoreNull = true;

  static Trip _instantiate(DecodingData data) {
    return Trip(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        status: data.dec(_f$status),
        waypoints: data.dec(_f$waypoints));
  }

  @override
  final Function instantiate = _instantiate;

  static Trip fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Trip>(map);
  }

  static Trip fromJson(String json) {
    return ensureInitialized().decodeJson<Trip>(json);
  }
}

mixin TripMappable {
  String toJson() {
    return TripMapper.ensureInitialized().encodeJson<Trip>(this as Trip);
  }

  Map<String, dynamic> toMap() {
    return TripMapper.ensureInitialized().encodeMap<Trip>(this as Trip);
  }

  TripCopyWith<Trip, Trip, Trip> get copyWith =>
      _TripCopyWithImpl(this as Trip, $identity, $identity);
  @override
  String toString() {
    return TripMapper.ensureInitialized().stringifyValue(this as Trip);
  }

  @override
  bool operator ==(Object other) {
    return TripMapper.ensureInitialized().equalsValue(this as Trip, other);
  }

  @override
  int get hashCode {
    return TripMapper.ensureInitialized().hashValue(this as Trip);
  }
}

extension TripValueCopy<$R, $Out> on ObjectCopyWith<$R, Trip, $Out> {
  TripCopyWith<$R, Trip, $Out> get $asTrip =>
      $base.as((v, t, t2) => _TripCopyWithImpl(v, t, t2));
}

abstract class TripCopyWith<$R, $In extends Trip, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Waypoint, WaypointCopyWith<$R, Waypoint, Waypoint>>
      get waypoints;
  $R call(
      {String? id,
      VString? name,
      TripStatus? status,
      List<Waypoint>? waypoints});
  TripCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TripCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Trip, $Out>
    implements TripCopyWith<$R, Trip, $Out> {
  _TripCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Trip> $mapper = TripMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Waypoint, WaypointCopyWith<$R, Waypoint, Waypoint>>
      get waypoints => ListCopyWith($value.waypoints,
          (v, t) => v.copyWith.$chain(t), (v) => call(waypoints: v));
  @override
  $R call(
          {String? id,
          VString? name,
          TripStatus? status,
          List<Waypoint>? waypoints}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (status != null) #status: status,
        if (waypoints != null) #waypoints: waypoints
      }));
  @override
  Trip $make(CopyWithData data) => Trip(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      status: data.get(#status, or: $value.status),
      waypoints: data.get(#waypoints, or: $value.waypoints));

  @override
  TripCopyWith<$R2, Trip, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TripCopyWithImpl($value, $cast, t);
}
