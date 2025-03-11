import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/table_builder_bloc/table_builder_bloc.dart';
import '../../domain/filter.dart';
import 'column_header.dart';

class ColumnsBuilder<T extends Object> extends StatelessWidget {
  final ScrollController scrollController;
  final List<Columnar<T, Object>> columns;
  final void Function(T item)? onRowTap;

  final BorderSide? rightBorder;
  final double? rowHeight;

  final double? tableWidth;
  final bool showTopBorder;

  const ColumnsBuilder({
    super.key,
    required this.scrollController,
    this.rightBorder,
    this.tableWidth,
    this.rowHeight,
    required this.columns,
    required this.onRowTap,
    required this.showTopBorder,
  });

  double get totalMinWidth {
    return columns.fold(
      0.0,
      (width, column) => width + column.decoration.minWidth,
    );
  }

  double get totalFlex {
    return columns.fold(0, (flex, column) => flex + column.decoration.flex);
  }

  Map<Columnar<T, Object>, double> calculateColumnWidths() {
    Map<Columnar<T, Object>, double> columnWidths = {};

    for (final column in columns) {
      columnWidths.putIfAbsent(
        column,
        () {
          if (tableWidth == null) return column.decoration.minWidth;
          final width = column.decoration.minWidth +
              ((tableWidth! - totalMinWidth) * column.decoration.flex) /
                  totalFlex;
          if (column.decoration.maxWidth == null) return width;
          return min(width, column.decoration.maxWidth!);
        },
      );
    }
    if (tableWidth == null) {
      return columnWidths;
    }
    final double totalColumnWidth = columnWidths.entries.fold(
      0,
      (e, element) => e + element.value,
    );

    if (tableWidth! - totalColumnWidth <= 1) {
      return columnWidths;
    }

    double leftOverSpace = tableWidth! - totalColumnWidth;
    List<Columnar<T, Object>> columnsThatCouldGrow = [];
    for (final entry in columnWidths.entries) {
      if (entry.key.decoration.maxWidth == null ||
          entry.value < entry.key.decoration.maxWidth!) {
        columnsThatCouldGrow.add(entry.key);
      }
    }

    for (final column in columnsThatCouldGrow) {
      columnWidths.update(
        column,
        (value) => value += leftOverSpace *
            column.decoration.flex /
            columnsThatCouldGrow.fold(
              0,
              (a, element) => a + element.decoration.flex,
            ),
      );
    }

    return columnWidths;
  }

  static const totalRowHeight = 40.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final columnWidths = calculateColumnWidths();
            return Column(
              children: [
                SizedBox(
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: showTopBorder
                            ? BorderSide(
                                width: 1,
                                color: Colors.grey.shade400,
                              )
                            : BorderSide.none,
                        bottom: BorderSide(
                          width: 0.5,
                          color: Colors.grey.shade400,
                        ),
                        right: rightBorder ?? BorderSide.none,
                      ),
                    ),
                    child: Row(
                      children: [
                        ...columns.map(
                          (column) {
                            return SizedBox(
                              width: columnWidths[column],
                              child: ColumnHeader<T>(column),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: tableWidth ?? totalMinWidth + 1,
                        child: ListView.builder(
                          itemExtent: rowHeight ?? 60,
                          padding: EdgeInsets.zero,
                          controller: scrollController,
                          itemCount: state.filteredItems.length + 1,
                          itemBuilder: (context, index) {
                            if (index == state.filteredItems.length) {
                              return const SizedBox(height: totalRowHeight);
                            }
                            final item = state.filteredItems[index];
                            return MouseRegion(
                              cursor: onRowTap != null
                                  ? SystemMouseCursors.click
                                  : SystemMouseCursors.basic,
                              onEnter: (_) {
                                if (onRowTap != null) {
                                  context.read<TableBuilderBloc<T>>().add(
                                        TableBuilderEvent.onItemHoverStart(
                                          item,
                                        ),
                                      );
                                }
                              },
                              onExit: (_) {
                                if (onRowTap != null) {
                                  context.read<TableBuilderBloc<T>>().add(
                                        const TableBuilderEvent
                                            .onItemHoverEnd(),
                                      );
                                }
                              },
                              child: InkWell(
                                mouseCursor: onRowTap != null
                                    ? SystemMouseCursors.click
                                    : SystemMouseCursors.basic,
                                onTap: () {
                                  if (onRowTap != null) {
                                    onRowTap!(item);
                                  }
                                },
                                child: SizedBox(
                                  height: 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: state.hoveredItemOption.fold(
                                        () => null,
                                        (a) => a == item
                                            ? const Color(0xfff7f6f8)
                                            : null,
                                      ),
                                      border: Border(
                                        bottom: BorderSide(
                                          width: 0.5,
                                          color: Colors.grey.shade400,
                                        ),
                                        right: rightBorder ?? BorderSide.none,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        ...columns.map(
                                          (column) {
                                            final data = column.data(item);
                                            return Container(
                                              width: columnWidths[column],
                                              padding:
                                                  column.decoration.padding,
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: DefaultTextStyle.merge(
                                                  style: column.textStyle
                                                      ?.call(item),
                                                  child: data.child ??
                                                      Text(
                                                        data.value.toString(),
                                                      ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      if (state.showTotals)
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Card.filled(
                            child: Container(
                              height: totalRowHeight,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    width: 0.5,
                                    color: Colors.grey.shade400,
                                  ),
                                  right: rightBorder ?? BorderSide.none,
                                ),
                              ),
                              child: Row(
                                children: [
                                  ...columns.map(
                                    (column) {
                                      return SizedBox(
                                        width: calculateColumnWidths()[column],
                                        child: column.total != null
                                            ? Padding(
                                                padding:
                                                    column.decoration.padding,
                                                child: Text(
                                                  column.total!(
                                                    state.filteredItems,
                                                  ),
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              )
                                            : const Text(''),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
