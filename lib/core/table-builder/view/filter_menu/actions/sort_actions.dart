import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../controller/table_builder_bloc/table_builder_bloc.dart';
import '../../../domain/filter.dart';
import '../../../domain/sort/sort.dart';
import '../icons/default_icons.dart';

class SortActions<T extends Object, V extends Object> extends StatelessWidget {
  final PrimitiveFilter<T, V> primitiveFilter;

  const SortActions(this.primitiveFilter, {super.key});

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    final bloc = context.read<TableBuilderBloc<T>>();
    return Column(
      children: [
        MenuItemButton(
          requestFocusOnHover: false,
          leadingIcon: DefaultIcons.sortAscending,
          child: Text(labels.sortAscending),
          onPressed: () {
            bloc.add(
              TableBuilderEvent<T, V>.onSortPressed(
                sort: Sort(
                  columnId: primitiveFilter.columnId,
                  value: primitiveFilter.value,
                  ascending: true,
                ),
              ),
            );
          },
        ),
        MenuItemButton(
          requestFocusOnHover: false,
          leadingIcon: DefaultIcons.sortDescending,
          child: Text(labels.sortDescending),
          onPressed: () {
            bloc.add(
              TableBuilderEvent<T, V>.onSortPressed(
                sort: Sort(
                  columnId: primitiveFilter.columnId,
                  value: primitiveFilter.value,
                  ascending: false,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
