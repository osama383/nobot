part of 'table_builder_bloc.dart';

@freezed
class TableBuilderState<T extends Object> with _$TableBuilderState<T> {
  const TableBuilderState._();
  const factory TableBuilderState({
    required String tableId,
    required List<Columnar<T, Object>> columns,
    required List<Filter<T, Object>> filters,
    required List<T> items,
    required List<T> filteredItems,
    required Option<Sort<T, Object>> sortOption,
    required Option<T> hoveredItemOption,
    required int freezedColumnsCount,
    required bool showTotals,
    required List<ColumnGroup> columnGroups,
  }) = _TableBuilderState;

  factory TableBuilderState.initial({
    required String tableId,
    required List<TableColumn<T, Object>> builders,
    required List<T> items,
    required int freezedColumnsCount,
    (String columnId, bool ascending)? initialSort,
    required bool showTotals,
    required List<ColumnGroup> columnGroups,
  }) {
    final filters = builders
        .map(
          (e) => e.filter,
        )
        .whereType<Filter<T, Object>>()
        .toList();

    final Option<Sort<T, Object>> initialSortOption;
    if (initialSort == null) {
      initialSortOption = none();
    } else {
      final sort = Sort(
        columnId: initialSort.$1,
        ascending: initialSort.$2,
        value: filters.singleWhere((e) => e.columnId == initialSort.$1).value,
      );
      initialSortOption = some(sort);
    }
    return _TableBuilderState<T>(
      tableId: tableId,
      columns: builders.map((e) => e.column).toList(),
      items: items,
      filteredItems: initialSortOption.fold(
        () => items,
        (sort) => sorted(items, sort),
      ),
      filters: filters,
      sortOption: initialSortOption,
      columnGroups: columnGroups,
      freezedColumnsCount: freezedColumnsCount,
      hoveredItemOption: none(),
      showTotals: showTotals,
    );
  }

  int get totalVisibleColumnsInVisibleGroups {
    int total = 0;
    final visibleGroups = columnGroups.where((e) => e.isVisible);
    for (final group in visibleGroups) {
      final groupColumns = columns.where((e) => e.groupId == group.id);
      for (final column in groupColumns) {
        total += column.isVisible ? 1 : 0;
      }
    }
    return total;
  }

  List<Columnar<T, Object>> get allVisibleColumns {
    return columns
        .where((e) => e.isVisible)
        .where((e) => !hiddenGroups.contains(e.groupId))
        .toList();
  }

  List<Columnar<T, Object>> get freezedColumns {
    return allVisibleColumns
        .getRange(
          0,
          freezedColumnsCount,
        )
        .toList();
  }

  List<Columnar<T, Object>> get scrollableColumns {
    return allVisibleColumns
        .getRange(
          freezedColumnsCount,
          allVisibleColumns.length,
        )
        .toList();
  }

  double get totalMinWidthOfAllVisibleColumns {
    return allVisibleColumns.fold(
      0,
      (previousValue, column) => previousValue + column.decoration.minWidth,
    );
  }

  List<String> get hiddenGroups =>
      columnGroups.where((e) => !e.isVisible).map((e) => e.id).toList();

  int totalVisibleColumnsInGroup(String groupId) {
    return columns.where((e) => e.groupId == groupId && e.isVisible).length;
  }
}
