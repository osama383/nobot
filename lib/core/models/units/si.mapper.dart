// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'si.dart';

class SIMapper extends EnumMapper<SI> {
  SIMapper._();

  static SIMapper? _instance;
  static SIMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SIMapper._());
    }
    return _instance!;
  }

  static SI fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SI decode(dynamic value) {
    switch (value) {
      case 'metric':
        return SI.metric;
      case 'imperial':
        return SI.imperial;
      case 'imperialUS':
        return SI.imperialUS;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SI self) {
    switch (self) {
      case SI.metric:
        return 'metric';
      case SI.imperial:
        return 'imperial';
      case SI.imperialUS:
        return 'imperialUS';
    }
  }
}

extension SIMapperExtension on SI {
  String toValue() {
    SIMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SI>(this) as String;
  }
}
