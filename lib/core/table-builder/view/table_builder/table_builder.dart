import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../models/utc.dart';
import '../../controller/table_builder_bloc/table_builder_bloc.dart';
import '../../domain/criteria.dart';
import '../../domain/filter.dart';
import '../filter_menu/filter_menu.dart';
import 'columns_builder.dart';

part '../filter_menu/date_filter_menu.dart';
part '../filter_menu/multiselect_filter_menu.dart';
part '../filter_menu/number_filter_menu.dart';
part '../filter_menu/string_filter_menu.dart';

class TableBuilder<T extends Object> extends StatefulWidget {
  const TableBuilder({
    super.key,
    this.onRowTap,
    this.rowHeight,
    this.showTopBorder = false,
  });
  final void Function(T item)? onRowTap;
  final double? rowHeight;
  final bool showTopBorder;

  @override
  State<TableBuilder<T>> createState() => _TableBuilderState<T>();
}

class _TableBuilderState<T extends Object> extends State<TableBuilder<T>> {
  late LinkedScrollControllerGroup _controllers;
  final ScrollController _singleScrollController = ScrollController();
  late ScrollController _scrollControllerLeft;
  late ScrollController _scrollControllerRight;

  late final TableBuilderBloc<T> bloc;

  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _scrollControllerLeft = _controllers.addAndGet();
    _scrollControllerRight = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _scrollControllerLeft.dispose();
    _scrollControllerRight.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return state.totalMinWidthOfAllVisibleColumns < constraints.maxWidth
                ? ColumnsBuilder(
                    tableWidth: constraints.maxWidth,
                    columns: state.allVisibleColumns,
                    onRowTap: widget.onRowTap,
                    rowHeight: widget.rowHeight,
                    scrollController: _singleScrollController,
                    showTopBorder: widget.showTopBorder,
                  )
                : Row(
                    children: [
                      ColumnsBuilder(
                        columns: state.freezedColumns,
                        onRowTap: widget.onRowTap,
                        rightBorder: const BorderSide(color: Colors.grey),
                        scrollController: _scrollControllerLeft,
                        rowHeight: widget.rowHeight,
                        showTopBorder: widget.showTopBorder,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const ClampingScrollPhysics(),
                          child: ColumnsBuilder(
                            columns: state.scrollableColumns,
                            onRowTap: widget.onRowTap,
                            scrollController: _scrollControllerRight,
                            rowHeight: widget.rowHeight,
                            showTopBorder: widget.showTopBorder,
                          ),
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
