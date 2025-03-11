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
      UtcOptionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Product';

  static ServiceStatus _$status(Product v) => v.status;
  static const Field<Product, ServiceStatus> _f$status =
      Field('status', _$status);
  static UtcOption _$dueDate(Product v) => v.dueDate;
  static const Field<Product, UtcOption> _f$dueDate =
      Field('dueDate', _$dueDate);
  static UtcOption _$lastService(Product v) => v.lastService;
  static const Field<Product, UtcOption> _f$lastService =
      Field('lastService', _$lastService);
  static Set<EmailAddress> _$serviceNotificationEmails(Product v) =>
      v.serviceNotificationEmails;
  static const Field<Product, Set<EmailAddress>> _f$serviceNotificationEmails =
      Field('serviceNotificationEmails', _$serviceNotificationEmails);

  @override
  final MappableFields<Product> fields = const {
    #status: _f$status,
    #dueDate: _f$dueDate,
    #lastService: _f$lastService,
    #serviceNotificationEmails: _f$serviceNotificationEmails,
  };

  static Product _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'Product', 'type', '${data.value['type']}');
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
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get dueDate;
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get lastService;
  $R call(
      {ServiceStatus? status,
      UtcOption? dueDate,
      UtcOption? lastService,
      Set<EmailAddress>? serviceNotificationEmails});
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
      UtcOptionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Uco';

  static ServiceStatus _$status(Uco v) => v.status;
  static const Field<Uco, ServiceStatus> _f$status = Field('status', _$status);
  static UtcOption _$dueDate(Uco v) => v.dueDate;
  static const Field<Uco, UtcOption> _f$dueDate = Field('dueDate', _$dueDate);
  static UtcOption _$lastService(Uco v) => v.lastService;
  static const Field<Uco, UtcOption> _f$lastService =
      Field('lastService', _$lastService);
  static Set<EmailAddress> _$serviceNotificationEmails(Uco v) =>
      v.serviceNotificationEmails;
  static const Field<Uco, Set<EmailAddress>> _f$serviceNotificationEmails =
      Field('serviceNotificationEmails', _$serviceNotificationEmails);
  static int _$oilPrice(Uco v) => v.oilPrice;
  static const Field<Uco, int> _f$oilPrice = Field('oilPrice', _$oilPrice);

  @override
  final MappableFields<Uco> fields = const {
    #status: _f$status,
    #dueDate: _f$dueDate,
    #lastService: _f$lastService,
    #serviceNotificationEmails: _f$serviceNotificationEmails,
    #oilPrice: _f$oilPrice,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'uco';
  @override
  late final ClassMapperBase superMapper = ProductMapper.ensureInitialized();

  static Uco _instantiate(DecodingData data) {
    return Uco(
        status: data.dec(_f$status),
        dueDate: data.dec(_f$dueDate),
        lastService: data.dec(_f$lastService),
        serviceNotificationEmails: data.dec(_f$serviceNotificationEmails),
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
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get dueDate;
  @override
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get lastService;
  @override
  $R call(
      {ServiceStatus? status,
      UtcOption? dueDate,
      UtcOption? lastService,
      Set<EmailAddress>? serviceNotificationEmails,
      int? oilPrice});
  UcoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UcoCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Uco, $Out>
    implements UcoCopyWith<$R, Uco, $Out> {
  _UcoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Uco> $mapper = UcoMapper.ensureInitialized();
  @override
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get dueDate =>
      $value.dueDate.copyWith.$chain((v) => call(dueDate: v));
  @override
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get lastService =>
      $value.lastService.copyWith.$chain((v) => call(lastService: v));
  @override
  $R call(
          {ServiceStatus? status,
          UtcOption? dueDate,
          UtcOption? lastService,
          Set<EmailAddress>? serviceNotificationEmails,
          int? oilPrice}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (dueDate != null) #dueDate: dueDate,
        if (lastService != null) #lastService: lastService,
        if (serviceNotificationEmails != null)
          #serviceNotificationEmails: serviceNotificationEmails,
        if (oilPrice != null) #oilPrice: oilPrice
      }));
  @override
  Uco $make(CopyWithData data) => Uco(
      status: data.get(#status, or: $value.status),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      lastService: data.get(#lastService, or: $value.lastService),
      serviceNotificationEmails: data.get(#serviceNotificationEmails,
          or: $value.serviceNotificationEmails),
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
      UtcOptionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Grease';

  static ServiceStatus _$status(Grease v) => v.status;
  static const Field<Grease, ServiceStatus> _f$status =
      Field('status', _$status);
  static UtcOption _$dueDate(Grease v) => v.dueDate;
  static const Field<Grease, UtcOption> _f$dueDate =
      Field('dueDate', _$dueDate);
  static UtcOption _$lastService(Grease v) => v.lastService;
  static const Field<Grease, UtcOption> _f$lastService =
      Field('lastService', _$lastService);
  static Set<EmailAddress> _$serviceNotificationEmails(Grease v) =>
      v.serviceNotificationEmails;
  static const Field<Grease, Set<EmailAddress>> _f$serviceNotificationEmails =
      Field('serviceNotificationEmails', _$serviceNotificationEmails);

  @override
  final MappableFields<Grease> fields = const {
    #status: _f$status,
    #dueDate: _f$dueDate,
    #lastService: _f$lastService,
    #serviceNotificationEmails: _f$serviceNotificationEmails,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'grease';
  @override
  late final ClassMapperBase superMapper = ProductMapper.ensureInitialized();

  static Grease _instantiate(DecodingData data) {
    return Grease(
        status: data.dec(_f$status),
        dueDate: data.dec(_f$dueDate),
        lastService: data.dec(_f$lastService),
        serviceNotificationEmails: data.dec(_f$serviceNotificationEmails));
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
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get dueDate;
  @override
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get lastService;
  @override
  $R call(
      {ServiceStatus? status,
      UtcOption? dueDate,
      UtcOption? lastService,
      Set<EmailAddress>? serviceNotificationEmails});
  GreaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GreaseCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Grease, $Out>
    implements GreaseCopyWith<$R, Grease, $Out> {
  _GreaseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Grease> $mapper = GreaseMapper.ensureInitialized();
  @override
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get dueDate =>
      $value.dueDate.copyWith.$chain((v) => call(dueDate: v));
  @override
  UtcOptionCopyWith<$R, UtcOption, UtcOption> get lastService =>
      $value.lastService.copyWith.$chain((v) => call(lastService: v));
  @override
  $R call(
          {ServiceStatus? status,
          UtcOption? dueDate,
          UtcOption? lastService,
          Set<EmailAddress>? serviceNotificationEmails}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (dueDate != null) #dueDate: dueDate,
        if (lastService != null) #lastService: lastService,
        if (serviceNotificationEmails != null)
          #serviceNotificationEmails: serviceNotificationEmails
      }));
  @override
  Grease $make(CopyWithData data) => Grease(
      status: data.get(#status, or: $value.status),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      lastService: data.get(#lastService, or: $value.lastService),
      serviceNotificationEmails: data.get(#serviceNotificationEmails,
          or: $value.serviceNotificationEmails));

  @override
  GreaseCopyWith<$R2, Grease, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GreaseCopyWithImpl($value, $cast, t);
}
