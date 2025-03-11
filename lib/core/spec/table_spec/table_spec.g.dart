// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableSpecImpl _$$TableSpecImplFromJson(Map<String, dynamic> json) =>
    _$TableSpecImpl(
      tableId: json['tableId'] as String,
      hiddenGroupIds: (json['hiddenGroupIds'] as List<dynamic>)
          .map((e) => e as String)
          .toSet(),
      hiddenColumnIds: (json['hiddenColumnIds'] as List<dynamic>)
          .map((e) => e as String)
          .toSet(),
      sortOption: const SortOptionConverter()
          .fromJson(json['sortOption'] as Map<String, dynamic>),
      filters: (json['filters'] as List<dynamic>)
          .map((e) => FilterSpec.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TableSpecImplToJson(_$TableSpecImpl instance) =>
    <String, dynamic>{
      'tableId': instance.tableId,
      'hiddenGroupIds': instance.hiddenGroupIds.toList(),
      'hiddenColumnIds': instance.hiddenColumnIds.toList(),
      'sortOption': const SortOptionConverter().toJson(instance.sortOption),
      'filters': instance.filters.map((e) => e.toJson()).toList(),
    };

_$SortSpecImpl _$$SortSpecImplFromJson(Map<String, dynamic> json) =>
    _$SortSpecImpl(
      columnId: json['columnId'] as String,
      ascending: json['ascending'] as bool,
    );

Map<String, dynamic> _$$SortSpecImplToJson(_$SortSpecImpl instance) =>
    <String, dynamic>{
      'columnId': instance.columnId,
      'ascending': instance.ascending,
    };

_$FilterSpecImpl _$$FilterSpecImplFromJson(Map<String, dynamic> json) =>
    _$FilterSpecImpl(
      columnId: json['columnId'] as String,
      criteriaSpecs: (json['criteriaSpecs'] as List<dynamic>)
          .map((e) => FilterCriterionSpec.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilterSpecImplToJson(_$FilterSpecImpl instance) =>
    <String, dynamic>{
      'columnId': instance.columnId,
      'criteriaSpecs': instance.criteriaSpecs.map((e) => e.toJson()).toList(),
    };

_$StringFilterCriterionSpecImpl _$$StringFilterCriterionSpecImplFromJson(
        Map<String, dynamic> json) =>
    _$StringFilterCriterionSpecImpl(
      name: json['name'] as String,
      target: json['target'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StringFilterCriterionSpecImplToJson(
        _$StringFilterCriterionSpecImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'target': instance.target,
      'runtimeType': instance.$type,
    };

_$NumberFilterCriterionSpecImpl _$$NumberFilterCriterionSpecImplFromJson(
        Map<String, dynamic> json) =>
    _$NumberFilterCriterionSpecImpl(
      name: json['name'] as String,
      target: (json['target'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NumberFilterCriterionSpecImplToJson(
        _$NumberFilterCriterionSpecImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'target': instance.target,
      'runtimeType': instance.$type,
    };

_$DateFilterCriterionSpecImpl _$$DateFilterCriterionSpecImplFromJson(
        Map<String, dynamic> json) =>
    _$DateFilterCriterionSpecImpl(
      name: json['name'] as String,
      target: DateTime.parse(json['target'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DateFilterCriterionSpecImplToJson(
        _$DateFilterCriterionSpecImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'target': instance.target.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$CollectionFilterCriterionSpecImpl
    _$$CollectionFilterCriterionSpecImplFromJson(Map<String, dynamic> json) =>
        _$CollectionFilterCriterionSpecImpl(
          name: json['name'] as String,
          target:
              (json['target'] as List<dynamic>).map((e) => e as String).toSet(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$CollectionFilterCriterionSpecImplToJson(
        _$CollectionFilterCriterionSpecImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'target': instance.target.toList(),
      'runtimeType': instance.$type,
    };
