// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'service_status.dart';

class ServiceStatusMapper extends EnumMapper<ServiceStatus> {
  ServiceStatusMapper._();

  static ServiceStatusMapper? _instance;
  static ServiceStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServiceStatusMapper._());
    }
    return _instance!;
  }

  static ServiceStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ServiceStatus decode(dynamic value) {
    switch (value) {
      case 'active':
        return ServiceStatus.active;
      case 'inactive':
        return ServiceStatus.inactive;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ServiceStatus self) {
    switch (self) {
      case ServiceStatus.active:
        return 'active';
      case ServiceStatus.inactive:
        return 'inactive';
    }
  }
}

extension ServiceStatusMapperExtension on ServiceStatus {
  String toValue() {
    ServiceStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ServiceStatus>(this) as String;
  }
}
