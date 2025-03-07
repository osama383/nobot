// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'permission.dart';

class PermissionMapper extends EnumMapper<Permission> {
  PermissionMapper._();

  static PermissionMapper? _instance;
  static PermissionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PermissionMapper._());
    }
    return _instance!;
  }

  static Permission fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Permission decode(dynamic value) {
    switch (value) {
      case 'trips':
        return Permission.trips;
      case 'customers':
        return Permission.customers;
      case 'reports':
        return Permission.reports;
      case 'sales':
        return Permission.sales;
      case 'assets':
        return Permission.assets;
      case 'settings':
        return Permission.settings;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Permission self) {
    switch (self) {
      case Permission.trips:
        return 'trips';
      case Permission.customers:
        return 'customers';
      case Permission.reports:
        return 'reports';
      case Permission.sales:
        return 'sales';
      case Permission.assets:
        return 'assets';
      case Permission.settings:
        return 'settings';
    }
  }
}

extension PermissionMapperExtension on Permission {
  String toValue() {
    PermissionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Permission>(this) as String;
  }
}
