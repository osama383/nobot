import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../table-builder/controller/table_builder_bloc/table_builder_bloc.dart';

part 'table_spec.freezed.dart';
part 'table_spec.g.dart';

class SortOptionConverter
    implements JsonConverter<Option<SortSpec>, Map<String, dynamic>> {
  const SortOptionConverter();

  @override
  Option<SortSpec> fromJson(Map<String, dynamic> json) {
    return json.isEmpty ? none() : some(SortSpec.fromJson(json));
  }

  @override
  Map<String, dynamic> toJson(Option<SortSpec> data) => data.fold(
        () => {},
        (sortSpec) => sortSpec.toJson(),
      );
}

@freezed
class TableSpec with _$TableSpec {
  const factory TableSpec({
    required String tableId,
    required Set<String> hiddenGroupIds,
    required Set<String> hiddenColumnIds,
    @SortOptionConverter() required Option<SortSpec> sortOption,
    required List<FilterSpec> filters,
  }) = _TableSpec;

  factory TableSpec.fromTableState(TableBuilderState tableState) {
    return TableSpec(
      tableId: tableState.tableId,
      hiddenGroupIds: tableState.columnGroups
          .where((e) => !e.isVisible)
          .map((e) => e.id)
          .toSet(),
      hiddenColumnIds: tableState.columns
          .where((e) => !e.isVisible)
          .map((e) => e.id)
          .toSet(),
      sortOption: tableState.sortOption.fold(
        () => none(),
        (sort) => some(sort.toSpec()),
      ),
      filters: tableState.filters
          .where((e) => e.appliedCriteria.isNotEmpty)
          .map((e) => e.toSpec())
          .toList(),
    );
  }

  factory TableSpec.fromJson(Map<String, dynamic> json) =>
      _$TableSpecFromJson(json);
}

@freezed
class SortSpec with _$SortSpec {
  const factory SortSpec({
    required String columnId,
    required bool ascending,
  }) = _SortSpec;

  factory SortSpec.fromJson(Map<String, dynamic> json) =>
      _$SortSpecFromJson(json);
}

@freezed
class FilterSpec with _$FilterSpec {
  const factory FilterSpec({
    required String columnId,
    required List<FilterCriterionSpec> criteriaSpecs,
  }) = _FilterSpec;

  factory FilterSpec.fromJson(Map<String, dynamic> json) =>
      _$FilterSpecFromJson(json);
}

@freezed
sealed class FilterCriterionSpec with _$FilterCriterionSpec {
  const factory FilterCriterionSpec.string({
    required String name,
    required String target,
  }) = StringFilterCriterionSpec;

  const factory FilterCriterionSpec.number({
    required String name,
    required double target,
  }) = NumberFilterCriterionSpec;

  const factory FilterCriterionSpec.date({
    required String name,
    required DateTime target,
  }) = DateFilterCriterionSpec;

  const factory FilterCriterionSpec.collection({
    required String name,
    required Set<String> target,
  }) = CollectionFilterCriterionSpec;

  factory FilterCriterionSpec.fromJson(Map<String, dynamic> json) =>
      _$FilterCriterionSpecFromJson(
        json,
      );
}
