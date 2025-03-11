import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../controller/table_builder_bloc/table_builder_bloc.dart';
import '../../../domain/filter.dart';
import '../icons/default_icons.dart';

class ClearFilterAction<T extends Object, V extends Object>
    extends StatelessWidget {
  final Filter<T, V> filter;

  const ClearFilterAction(this.filter, {super.key});

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    final bloc = context.read<TableBuilderBloc<T>>();
    return MenuItemButton(
      requestFocusOnHover: false,
      leadingIcon: filter.appliedCriteria.isNotEmpty
          ? DefaultIcons.clearFilterEnabled
          : DefaultIcons.clearFilterDisabled,
      onPressed: filter.appliedCriteria.isEmpty
          ? null
          : () {
              bloc.add(
                TableBuilderEvent<T, V>.onFilterCleared(
                  filter.columnId,
                ),
              );
            },
      child: Text(labels.clearFilter),
    );
  }
}
