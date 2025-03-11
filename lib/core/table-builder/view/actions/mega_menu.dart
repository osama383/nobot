import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../../../widgets/menu_chip.dart';
import '../../controller/table_builder_bloc/table_builder_bloc.dart';
import '../../domain/filter.dart';

class ShowHideGroups<T extends Object> extends StatelessWidget {
  final List<String>? groupIds;
  const ShowHideGroups({super.key, this.groupIds});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        final List<ColumnGroup> groups;
        if (groupIds == null) {
          groups = state.columnGroups;
        } else {
          groups = state.columnGroups
              .where((e) => groupIds!.contains(e.id))
              .toList();
        }
        return PointerInterceptor(
          child: MenuChip(
            title: 'Columns (${state.totalVisibleColumnsInVisibleGroups})',
            menuChildren: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (final columnGroup in groups)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ColumnGroupVisibilityController<T>(columnGroup),
                      ),
                    ),
                ],
              ),
            ],
          ),
        );

        // return
      },
    );
  }
}

class ColumnGroupVisibilityController<T extends Object>
    extends StatelessWidget {
  const ColumnGroupVisibilityController(this.columnGroup, {super.key});

  final ColumnGroup columnGroup;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    '${columnGroup.title} (${!columnGroup.isVisible ? 0 : state.totalVisibleColumnsInGroup(columnGroup.id)})',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: columnGroup.isVisible ? null : Colors.grey,
                    ),
                  ),
                ),
                trailing: columnGroup.isVisible
                    ? const Icon(Icons.visibility, size: 18)
                    : const Icon(
                        Icons.visibility_off,
                        size: 18,
                        color: Colors.grey,
                      ),
                onTap: () {
                  context.read<TableBuilderBloc<T>>().add(
                        TableBuilderEvent.onToggleGroupVisibility(
                          columnGroup,
                        ),
                      );
                },
              ),
              ...state.columns.where((e) => e.groupId == columnGroup.id).map(
                    (column) => PointerInterceptor(
                      child: CheckboxListTile(
                        splashRadius: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: column.isVisible,
                        title: Text(
                          column.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onChanged: !columnGroup.isVisible
                            ? null
                            : (_) {
                                context.read<TableBuilderBloc<T>>().add(
                                      TableBuilderEvent
                                          .onToggleColumnVisibility(
                                        column.id,
                                      ),
                                    );
                              },
                      ),
                    ),
                  ),
            ],
          ),
        );
      },
    );
  }
}
