part of 'table_builder_bloc.dart';

@freezed
class TableBuilderEvent<T extends Object, Type extends Object>
    with _$TableBuilderEvent<T, Type> {
  const factory TableBuilderEvent.onSpecInput(
    TableSpec spec, {
    required bool importFilters,
  }) = _OnSpecInput;

  const factory TableBuilderEvent.setItems(List<T> items) = _SetItems;

  const factory TableBuilderEvent.onToggleGroupVisibility(
    ColumnGroup group,
  ) = _OnToggleGroupVisibility;

  const factory TableBuilderEvent.onToggleColumnVisibility(
    String columnId,
  ) = _OnToggleColumnVisibility;

  const factory TableBuilderEvent.onSetFilterPressed(
    String columnId,
    List<AppliedCriterion<Type>> appliedCriteria,
  ) = _OnSetFilterPressed;

  const factory TableBuilderEvent.onAllFiltersCleared() = _OnAllFiltersCleared;

  const factory TableBuilderEvent.onFilterCleared(
    String columnId,
  ) = _OnFilterCleared;

  const factory TableBuilderEvent.onItemHoverStart(
    T item,
  ) = _OnItemHoverStart;

  const factory TableBuilderEvent.onItemHoverEnd() = _OnItemHoverEnd;

  const factory TableBuilderEvent.onExport(
    String filename,
  ) = _OnExport;

  const factory TableBuilderEvent.onSortPressed({
    required Sort<T, Type> sort,
  }) = _OnSortPressed;

  const factory TableBuilderEvent.updateCollectionFilterOptions(
    Set<Type> options, {
    required String columnId,
  }) = _UpdateCollectionFilterOptions;
}
