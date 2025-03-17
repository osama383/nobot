import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:excel/excel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/criteria.dart';
import '../../domain/filter.dart';
import '../../../spec/table_spec/table_spec.dart';
import '../../domain/sort/sort.dart';
import '../../domain/sort_and_filter.dart';

part 'table_builder_event.dart';
part 'table_builder_state.dart';
part 'table_builder_bloc.freezed.dart';

class TableBuilderBloc<T extends Object>
    extends Bloc<TableBuilderEvent<T, Object>, TableBuilderState<T>> {
  TableBuilderBloc({
    required String tableId,
    required final List<TableColumn<T, Object>> builders,
    required final List<T> theItems,
    required final int theFreezedColumnsCount,
    (String columnId, bool ascending)? initialSort,
    bool? showTotals,
    List<ColumnGroup>? columnGroups,
  }) : super(
          TableBuilderState.initial(
            tableId: tableId,
            builders: builders,
            items: theItems,
            freezedColumnsCount: theFreezedColumnsCount,
            initialSort: initialSort,
            showTotals: showTotals ?? false,
            columnGroups: columnGroups ?? [],
          ),
        ) {
    on<TableBuilderEvent<T, Object>>(
      (event, emit) {
        event.map(
          onSpecInput: (event) {
            try {
              // clear all filters
              {
                final filters = List<Filter<T, Object>>.from(
                  state.filters,
                ).map((e) => e.clearCriteria()).toList();

                emit(
                  state.copyWith(
                    filters: filters,
                    filteredItems: filteredAndSorted(
                      state.items,
                      filters,
                      state.sortOption,
                    ),
                  ),
                );
              }
              // set column and group visibility
              {
                List<ColumnGroup> allGroups = List.from(state.columnGroups);
                final hiddenGroups = event.spec.hiddenGroupIds;
                for (int i = 0; i < allGroups.length; i++) {
                  var group = allGroups[i];
                  final isHidden = hiddenGroups.contains(group.id);
                  group = group.copyWith(isVisible: !isHidden);
                  allGroups[i] = group;
                }
                List<Columnar<T, Object>> allColumns = List.from(state.columns);
                final hiddenColumnIds = event.spec.hiddenColumnIds;
                for (int i = 0; i < allColumns.length; i++) {
                  var column = allColumns[i];
                  final isHidden = hiddenColumnIds.contains(column.id);
                  column = column.copyWith(isVisible: !isHidden);
                  allColumns[i] = column;
                }
                emit(
                  state.copyWith(
                    columnGroups: allGroups,
                    columns: allColumns,
                  ),
                );
              }

              // set sort
              event.spec.sortOption.fold(
                () {},
                (sortSpec) {
                  final filter = state.filters.singleWhere(
                    (e) => e.columnId == sortSpec.columnId,
                  );
                  final sort = Sort(
                    columnId: sortSpec.columnId,
                    value: filter.value,
                    ascending: sortSpec.ascending,
                  );
                  emit(state.copyWith(sortOption: some(sort)));
                },
              );

              // set filters
              if (!event.importFilters) return;
              final filters = List<Filter<T, Object>>.from(state.filters);
              for (final filterSpec in event.spec.filters) {
                Filter<T, Object> updatedFilter = filters.singleWhere(
                  (e) => e.columnId == filterSpec.columnId,
                );
                updatedFilter = updatedFilter.copyFromSpec(filterSpec);
                final index = filters.indexWhere(
                  (e) => e.columnId == updatedFilter.columnId,
                );
                filters[index] = updatedFilter;
              }
              final filterdAndSortedItems = filteredAndSorted(
                state.items,
                filters,
                state.sortOption,
              );
              emit(
                state.copyWith(
                  filters: filters,
                  filteredItems: filterdAndSortedItems,
                ),
              );
            } catch (_) {}
          },
          updateCollectionFilterOptions: (event) {
            final filters = List<Filter<T, Object>>.from(state.filters);
            final index = filters.indexWhere(
              (e) => e.columnId == event.columnId,
            );
            if (index == -1) return;
            if (filters[index] is! MultiselectFilter<T, Object>) {
              return;
            }
            filters[index] =
                (filters[index] as MultiselectFilter<T, Object>).copyWith(
              options: event.options,
            );

            emit(state.copyWith(filters: filters));
          },
          onExport: (event) async {
            final excel = Excel.createExcel();
            Sheet sheet = excel['Sheet1'];
            final visibleColumns = state.columns
                .where(
                  (e) => e.isVisible && !state.hiddenGroups.contains(e.groupId),
                )
                .toList();

            for (int columnIndex = 0;
                columnIndex < visibleColumns.length;
                columnIndex++) {
              final column = visibleColumns[columnIndex];
              sheet
                  .cell(
                    CellIndex.indexByColumnRow(
                      columnIndex: columnIndex,
                      rowIndex: 0,
                    ),
                  )
                  .value = TextCellValue(column.name);

              for (int rowIndex = 0;
                  rowIndex < state.filteredItems.length;
                  rowIndex++) {
                final cell = sheet.cell(
                  CellIndex.indexByColumnRow(
                    columnIndex: columnIndex,
                    rowIndex: rowIndex + 1,
                  ),
                );

                final item = state.filteredItems[rowIndex];
                cell.value = column.data(item).excel;
              }
            }
            excel.save(fileName: '${event.filename}.xlsx');
          },
          onToggleGroupVisibility: (event) {
            List<ColumnGroup> columnGroups = List.from(state.columnGroups);
            final index = columnGroups.indexWhere(
              (e) => e.id == event.group.id,
            );
            final column = columnGroups[index];
            columnGroups[index] = column.copyWith(isVisible: !column.isVisible);
            List<Filter<T, Object>> filters = [];
            for (final filter in state.filters) {
              if (event.group.id == filter.groupId) {
                filters.add(filter.clearCriteria());
              } else {
                filters.add(filter);
              }
            }
            final filterdAndSortedItems = filteredAndSorted(
              state.items,
              filters,
              state.sortOption,
            );
            emit(
              state.copyWith(
                columnGroups: columnGroups,
                filters: filters,
                filteredItems: filterdAndSortedItems,
              ),
            );
          },
          onToggleColumnVisibility: (event) {
            final columns = List<Columnar<T, Object>>.from(state.columns);
            final index = columns.indexWhere((e) => e.id == event.columnId);
            if (index == -1) return;
            columns[index] = columns[index].copyWith(
              isVisible: !columns[index].isVisible,
            );
            final filters = List<Filter<T, Object>>.from(state.filters);
            final index2 = filters.indexWhere(
              (e) => e.columnId == event.columnId,
            );
            if (index2 != -1) {
              filters[index2] = filters[index2].clearCriteria();
            }

            final filterdAndSortedItems = filteredAndSorted(
              state.items,
              filters,
              state.sortOption,
            );
            emit(
              state.copyWith(
                columns: columns,
                filters: filters,
                filteredItems: filterdAndSortedItems,
              ),
            );
          },
          setItems: (event) {
            final filteredItems = filteredAndSorted(
              event.items,
              state.filters,
              state.sortOption,
            );

            emit(
              state.copyWith(
                items: event.items,
                filteredItems: filteredItems,
              ),
            );
            // Future.delayed(const Duration(seconds: 2));
            // emit(
            //   state.copyWith(
            //     filteredItems: filteredItems,
            //   ),
            // );
          },
          onAllFiltersCleared: (event) {
            final filters = List<Filter<T, Object>>.from(
              state.filters,
            ).map((e) => e.clearCriteria()).toList();

            emit(
              state.copyWith(
                filters: filters,
                filteredItems: filteredAndSorted(
                  state.items,
                  filters,
                  state.sortOption,
                ),
              ),
            );
          },
          onFilterCleared: (event) {
            final filters = List<Filter<T, Object>>.from(
              state.filters,
            );
            final index = filters.indexWhere(
              (e) => e.columnId == event.columnId,
            );

            if (index == -1) return;

            final filter = filters[index].clearCriteria();
            filters[index] = filter;

            emit(
              state.copyWith(
                filters: filters,
                filteredItems: filteredAndSorted(
                  state.items,
                  filters,
                  state.sortOption,
                ),
              ),
            );
          },
          onSetFilterPressed: (event) {
            final filters = List<Filter<T, Object>>.from(state.filters);
            final index = filters.indexWhere(
              (e) => e.columnId == event.columnId,
            );
            if (index == -1) return;
            final filter = filters[index].copyWithCriteria(
              event.appliedCriteria,
            );
            filters[index] = filter;

            emit(
              state.copyWith(
                filters: filters,
                filteredItems: filteredAndSorted(
                  state.items,
                  filters,
                  state.sortOption,
                ),
              ),
            );
          },
          onSortPressed: (event) {
            emit(
              state.copyWith(
                sortOption: some(event.sort),
                filteredItems: sorted(state.filteredItems, event.sort),
              ),
            );
          },
          onItemHoverStart: (event) {
            emit(state.copyWith(hoveredItemOption: some(event.item)));
          },
          onItemHoverEnd: (event) {
            emit(state.copyWith(hoveredItemOption: none()));
          },
        );
      },
    );
  }
}
