// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomersPageSpecImpl _$$CustomersPageSpecImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomersPageSpecImpl(
      depotId: json['depotId'] as String,
      tableSpec: TableSpec.fromJson(json['tableSpec'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CustomersPageSpecImplToJson(
        _$CustomersPageSpecImpl instance) =>
    <String, dynamic>{
      'depotId': instance.depotId,
      'tableSpec': instance.tableSpec.toJson(),
      'runtimeType': instance.$type,
    };

_$TripsPageSpecImpl _$$TripsPageSpecImplFromJson(Map<String, dynamic> json) =>
    _$TripsPageSpecImpl(
      depotId: json['depotId'] as String,
      tableSpec: TableSpec.fromJson(json['tableSpec'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TripsPageSpecImplToJson(_$TripsPageSpecImpl instance) =>
    <String, dynamic>{
      'depotId': instance.depotId,
      'tableSpec': instance.tableSpec.toJson(),
      'runtimeType': instance.$type,
    };

_$ReportsPageSpecImpl _$$ReportsPageSpecImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportsPageSpecImpl(
      dateSelection: const ReportsDateSelectionJsonConverter()
          .fromJson(json['dateSelection'] as Map<String, dynamic>),
      tableSpec: TableSpec.fromJson(json['tableSpec'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReportsPageSpecImplToJson(
        _$ReportsPageSpecImpl instance) =>
    <String, dynamic>{
      'dateSelection': const ReportsDateSelectionJsonConverter()
          .toJson(instance.dateSelection),
      'tableSpec': instance.tableSpec.toJson(),
      'runtimeType': instance.$type,
    };
