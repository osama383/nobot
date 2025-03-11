import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../controller/table_builder_bloc/table_builder_bloc.dart';
import '../../domain/filter.dart';
import '../filter_menu/icons/default_icons.dart';

class ColumnHeader<T extends Object> extends StatefulWidget {
  const ColumnHeader(this.column, {super.key});
  final Columnar<T, Object> column;

  @override
  State<ColumnHeader<T>> createState() => _ColumnHeaderState<T>();
}

class _ColumnHeaderState<T extends Object> extends State<ColumnHeader<T>> {
  bool isHovering = false;
  bool isMenuOpen = false;

  Key key = const Key('');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        final filter = state.filters.firstWhereOrNull(
          (e) => e.columnId == widget.column.id,
        );
        return MenuAnchor(
          onOpen: () => setState(() {
            key = Key(DateTime.now().toString());
            isMenuOpen = true;
          }),
          onClose: () => setState(() => isMenuOpen = false),
          alignmentOffset: const Offset(0, -10),
          consumeOutsideTap: true,
          menuChildren: filter == null
              ? []
              : [
                  filter.menu(context.read<TableBuilderBloc<T>>(), key),
                ],
          builder: (context, menuController, child) {
            return MouseRegion(
              onEnter: (event) => setState(() => isHovering = true),
              onExit: (event) => setState(() => isHovering = false),
              child: InkWell(
                onTap: filter == null
                    ? null
                    : () {
                        if (menuController.isOpen) {
                          menuController.close();
                        } else {
                          menuController.open();
                        }
                      },
                child: Container(
                  height: 60,
                  padding: widget.column.decoration.padding,
                  decoration: BoxDecoration(
                    color: isMenuOpen ? Theme.of(context).hoverColor : null,
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  child: BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
                    buildWhen: (previous, current) => true,
                    builder: (context, state) {
                      return Row(
                        children: [
                          if (widget.column.showNameInHeader)
                            Text(
                              widget.column.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          if (filter != null) ...[
                            if (widget.column.showNameInHeader)
                              const SizedBox(width: 8),
                            state.sortOption.fold(() => const SizedBox(),
                                (sort) {
                              return sort.columnId != widget.column.id
                                  ? const SizedBox()
                                  : sort.ascending
                                      ? DefaultIcons.upArrow
                                      : DefaultIcons.downArrow;
                            }),
                            const SizedBox(width: 4),
                            if (filter.filterIcon != null &&
                                filter.appliedCriteria.isEmpty)
                              filter.filterIcon!,
                            if (filter.appliedCriteria.isNotEmpty)
                              filter.filteredIcon ?? DefaultIcons.filterOn,
                          ],
                        ],
                      );
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
