// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product.dart';

class ProductMapper extends ClassMapperBase<Product> {
  ProductMapper._();

  static ProductMapper? _instance;
  static ProductMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductMapper._());
      UcoMapper.ensureInitialized();
      GreaseMapper.ensureInitialized();
      ServiceStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Product';

  static ServiceStatus _$status(Product v) => v.status;
  static const Field<Product, ServiceStatus> _f$status =
      Field('status', _$status);
  static UtcOption _$dueDateOption(Product v) => v.dueDateOption;
  static const Field<Product, UtcOption> _f$dueDateOption =
      Field('dueDateOption', _$dueDateOption);
  static UtcOption _$lastServiceOption(Product v) => v.lastServiceOption;
  static const Field<Product, UtcOption> _f$lastServiceOption =
      Field('lastServiceOption', _$lastServiceOption);
  static UtcOption _$scheduledDateOption(Product v) => v.scheduledDateOption;
  static const Field<Product, UtcOption> _f$scheduledDateOption =
      Field('scheduledDateOption', _$scheduledDateOption);
  static Set<EmailAddress> _$serviceNotificationEmails(Product v) =>
      v.serviceNotificationEmails;
  static const Field<Product, Set<EmailAddress>> _f$serviceNotificationEmails =
      Field('serviceNotificationEmails', _$serviceNotificationEmails);
  static LatLng _$location(Product v) => v.location;
  static const Field<Product, LatLng> _f$location =
      Field('location', _$location);

  @override
  final MappableFields<Product> fields = const {
    #status: _f$status,
    #dueDateOption: _f$dueDateOption,
    #lastServiceOption: _f$lastServiceOption,
    #scheduledDateOption: _f$scheduledDateOption,
    #serviceNotificationEmails: _f$serviceNotificationEmails,
    #location: _f$location,
  };

  static Product _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'Product', 'runtimeType', '${data.value['runtimeType']}');
  }

  @override
  final Function instantiate = _instantiate;

  static Product fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Product>(map);
  }

  static Product fromJson(String json) {
    return ensureInitialized().decodeJson<Product>(json);
  }
}

mixin ProductMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ProductCopyWith<Product, Product, Product> get copyWith;
}

abstract class ProductCopyWith<$R, $In extends Product, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {ServiceStatus? status,
      UtcOption? dueDateOption,
      UtcOption? lastServiceOption,
      UtcOption? scheduledDateOption,
      Set<EmailAddress>? serviceNotificationEmails,
      LatLng? location});
  ProductCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class UcoMapper extends SubClassMapperBase<Uco> {
  UcoMapper._();

  static UcoMapper? _instance;
  static UcoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UcoMapper._());
      ProductMapper.ensureInitialized().addSubMapper(_instance!);
      ServiceStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Uco';

  static ServiceStatus _$status(Uco v) => v.status;
  static const Field<Uco, ServiceStatus> _f$status = Field('status', _$status);
  static UtcOption _$dueDateOption(Uco v) => v.dueDateOption;
  static const Field<Uco, UtcOption> _f$dueDateOption =
      Field('dueDateOption', _$dueDateOption);
  static UtcOption _$lastServiceOption(Uco v) => v.lastServiceOption;
  static const Field<Uco, UtcOption> _f$lastServiceOption =
      Field('lastServiceOption', _$lastServiceOption);
  static UtcOption _$scheduledDateOption(Uco v) => v.scheduledDateOption;
  static const Field<Uco, UtcOption> _f$scheduledDateOption =
      Field('scheduledDateOption', _$scheduledDateOption);
  static Set<EmailAddress> _$serviceNotificationEmails(Uco v) =>
      v.serviceNotificationEmails;
  static const Field<Uco, Set<EmailAddress>> _f$serviceNotificationEmails =
      Field('serviceNotificationEmails', _$serviceNotificationEmails);
  static LatLng _$location(Uco v) => v.location;
  static const Field<Uco, LatLng> _f$location = Field('location', _$location);
  static int _$oilPrice(Uco v) => v.oilPrice;
  static const Field<Uco, int> _f$oilPrice = Field('oilPrice', _$oilPrice);

  @override
  final MappableFields<Uco> fields = const {
    #status: _f$status,
    #dueDateOption: _f$dueDateOption,
    #lastServiceOption: _f$lastServiceOption,
    #scheduledDateOption: _f$scheduledDateOption,
    #serviceNotificationEmails: _f$serviceNotificationEmails,
    #location: _f$location,
    #oilPrice: _f$oilPrice,
  };

  @override
  final String discriminatorKey = 'runtimeType';
  @override
  final dynamic discriminatorValue = 'uco';
  @override
  late final ClassMapperBase superMapper = ProductMapper.ensureInitialized();

  static Uco _instantiate(DecodingData data) {
    return Uco(
        status: data.dec(_f$status),
        dueDateOption: data.dec(_f$dueDateOption),
        lastServiceOption: data.dec(_f$lastServiceOption),
        scheduledDateOption: data.dec(_f$scheduledDateOption),
        serviceNotificationEmails: data.dec(_f$serviceNotificationEmails),
        location: data.dec(_f$location),
        oilPrice: data.dec(_f$oilPrice));
  }

  @override
  final Function instantiate = _instantiate;

  static Uco fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Uco>(map);
  }

  static Uco fromJson(String json) {
    return ensureInitialized().decodeJson<Uco>(json);
  }
}

mixin UcoMappable {
  String toJson() {
    return UcoMapper.ensureInitialized().encodeJson<Uco>(this as Uco);
  }

  Map<String, dynamic> toMap() {
    return UcoMapper.ensureInitialized().encodeMap<Uco>(this as Uco);
  }

  UcoCopyWith<Uco, Uco, Uco> get copyWith =>
      _UcoCopyWithImpl(this as Uco, $identity, $identity);
  @override
  String toString() {
    return UcoMapper.ensureInitialized().stringifyValue(this as Uco);
  }

  @override
  bool operator ==(Object other) {
    return UcoMapper.ensureInitialized().equalsValue(this as Uco, other);
  }

  @override
  int get hashCode {
    return UcoMapper.ensureInitialized().hashValue(this as Uco);
  }
}

extension UcoValueCopy<$R, $Out> on ObjectCopyWith<$R, Uco, $Out> {
  UcoCopyWith<$R, Uco, $Out> get $asUco =>
      $base.as((v, t, t2) => _UcoCopyWithImpl(v, t, t2));
}

abstract class UcoCopyWith<$R, $In extends Uco, $Out>
    implements ProductCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {ServiceStatus? status,
      UtcOption? dueDateOption,
      UtcOption? lastServiceOption,
      UtcOption? scheduledDateOption,
      Set<EmailAddress>? serviceNotificationEmails,
      LatLng? location,
      int? oilPrice});
  UcoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UcoCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Uco, $Out>
    implements UcoCopyWith<$R, Uco, $Out> {
  _UcoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Uco> $mapper = UcoMapper.ensureInitialized();
  @override
  $R call(
          {ServiceStatus? status,
          UtcOption? dueDateOption,
          UtcOption? lastServiceOption,
          UtcOption? scheduledDateOption,
          Set<EmailAddress>? serviceNotificationEmails,
          LatLng? location,
          int? oilPrice}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (dueDateOption != null) #dueDateOption: dueDateOption,
        if (lastServiceOption != null) #lastServiceOption: lastServiceOption,
        if (scheduledDateOption != null)
          #scheduledDateOption: scheduledDateOption,
        if (serviceNotificationEmails != null)
          #serviceNotificationEmails: serviceNotificationEmails,
        if (location != null) #location: location,
        if (oilPrice != null) #oilPrice: oilPrice
      }));
  @override
  Uco $make(CopyWithData data) => Uco(
      status: data.get(#status, or: $value.status),
      dueDateOption: data.get(#dueDateOption, or: $value.dueDateOption),
      lastServiceOption:
          data.get(#lastServiceOption, or: $value.lastServiceOption),
      scheduledDateOption:
          data.get(#scheduledDateOption, or: $value.scheduledDateOption),
      serviceNotificationEmails: data.get(#serviceNotificationEmails,
          or: $value.serviceNotificationEmails),
      location: data.get(#location, or: $value.location),
      oilPrice: data.get(#oilPrice, or: $value.oilPrice));

  @override
  UcoCopyWith<$R2, Uco, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UcoCopyWithImpl($value, $cast, t);
}

class GreaseMapper extends SubClassMapperBase<Grease> {
  GreaseMapper._();

  static GreaseMapper? _instance;
  static GreaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GreaseMapper._());
      ProductMapper.ensureInitialized().addSubMapper(_instance!);
      ServiceStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Grease';

  static ServiceStatus _$status(Grease v) => v.status;
  static const Field<Grease, ServiceStatus> _f$status =
      Field('status', _$status);
  static UtcOption _$dueDateOption(Grease v) => v.dueDateOption;
  static const Field<Grease, UtcOption> _f$dueDateOption =
      Field('dueDateOption', _$dueDateOption);
  static UtcOption _$lastServiceOption(Grease v) => v.lastServiceOption;
  static const Field<Grease, UtcOption> _f$lastServiceOption =
      Field('lastServiceOption', _$lastServiceOption);
  static UtcOption _$scheduledDateOption(Grease v) => v.scheduledDateOption;
  static const Field<Grease, UtcOption> _f$scheduledDateOption =
      Field('scheduledDateOption', _$scheduledDateOption);
  static LatLng _$location(Grease v) => v.location;
  static const Field<Grease, LatLng> _f$location =
      Field('location', _$location);
  static Set<EmailAddress> _$serviceNotificationEmails(Grease v) =>
      v.serviceNotificationEmails;
  static const Field<Grease, Set<EmailAddress>> _f$serviceNotificationEmails =
      Field('serviceNotificationEmails', _$serviceNotificationEmails);
  static Volume _$capacity(Grease v) => v.capacity;
  static const Field<Grease, Volume> _f$capacity =
      Field('capacity', _$capacity);

  @override
  final MappableFields<Grease> fields = const {
    #status: _f$status,
    #dueDateOption: _f$dueDateOption,
    #lastServiceOption: _f$lastServiceOption,
    #scheduledDateOption: _f$scheduledDateOption,
    #location: _f$location,
    #serviceNotificationEmails: _f$serviceNotificationEmails,
    #capacity: _f$capacity,
  };

  @override
  final String discriminatorKey = 'runtimeType';
  @override
  final dynamic discriminatorValue = 'grease';
  @override
  late final ClassMapperBase superMapper = ProductMapper.ensureInitialized();

  static Grease _instantiate(DecodingData data) {
    return Grease(
        status: data.dec(_f$status),
        dueDateOption: data.dec(_f$dueDateOption),
        lastServiceOption: data.dec(_f$lastServiceOption),
        scheduledDateOption: data.dec(_f$scheduledDateOption),
        location: data.dec(_f$location),
        serviceNotificationEmails: data.dec(_f$serviceNotificationEmails),
        capacity: data.dec(_f$capacity));
  }

  @override
  final Function instantiate = _instantiate;

  static Grease fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Grease>(map);
  }

  static Grease fromJson(String json) {
    return ensureInitialized().decodeJson<Grease>(json);
  }
}

mixin GreaseMappable {
  String toJson() {
    return GreaseMapper.ensureInitialized().encodeJson<Grease>(this as Grease);
  }

  Map<String, dynamic> toMap() {
    return GreaseMapper.ensureInitialized().encodeMap<Grease>(this as Grease);
  }

  GreaseCopyWith<Grease, Grease, Grease> get copyWith =>
      _GreaseCopyWithImpl(this as Grease, $identity, $identity);
  @override
  String toString() {
    return GreaseMapper.ensureInitialized().stringifyValue(this as Grease);
  }

  @override
  bool operator ==(Object other) {
    return GreaseMapper.ensureInitialized().equalsValue(this as Grease, other);
  }

  @override
  int get hashCode {
    return GreaseMapper.ensureInitialized().hashValue(this as Grease);
  }
}

extension GreaseValueCopy<$R, $Out> on ObjectCopyWith<$R, Grease, $Out> {
  GreaseCopyWith<$R, Grease, $Out> get $asGrease =>
      $base.as((v, t, t2) => _GreaseCopyWithImpl(v, t, t2));
}

abstract class GreaseCopyWith<$R, $In extends Grease, $Out>
    implements ProductCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {ServiceStatus? status,
      UtcOption? dueDateOption,
      UtcOption? lastServiceOption,
      UtcOption? scheduledDateOption,
      LatLng? location,
      Set<EmailAddress>? serviceNotificationEmails,
      Volume? capacity});
  GreaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GreaseCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Grease, $Out>
    implements GreaseCopyWith<$R, Grease, $Out> {
  _GreaseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Grease> $mapper = GreaseMapper.ensureInitialized();
  @override
  $R call(
          {ServiceStatus? status,
          UtcOption? dueDateOption,
          UtcOption? lastServiceOption,
          UtcOption? scheduledDateOption,
          LatLng? location,
          Set<EmailAddress>? serviceNotificationEmails,
          Volume? capacity}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (dueDateOption != null) #dueDateOption: dueDateOption,
        if (lastServiceOption != null) #lastServiceOption: lastServiceOption,
        if (scheduledDateOption != null)
          #scheduledDateOption: scheduledDateOption,
        if (location != null) #location: location,
        if (serviceNotificationEmails != null)
          #serviceNotificationEmails: serviceNotificationEmails,
        if (capacity != null) #capacity: capacity
      }));
  @override
  Grease $make(CopyWithData data) => Grease(
      status: data.get(#status, or: $value.status),
      dueDateOption: data.get(#dueDateOption, or: $value.dueDateOption),
      lastServiceOption:
          data.get(#lastServiceOption, or: $value.lastServiceOption),
      scheduledDateOption:
          data.get(#scheduledDateOption, or: $value.scheduledDateOption),
      location: data.get(#location, or: $value.location),
      serviceNotificationEmails: data.get(#serviceNotificationEmails,
          or: $value.serviceNotificationEmails),
      capacity: data.get(#capacity, or: $value.capacity));

  @override
  GreaseCopyWith<$R2, Grease, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GreaseCopyWithImpl($value, $cast, t);
}
