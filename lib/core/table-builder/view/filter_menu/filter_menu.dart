import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/table_builder_bloc/table_builder_bloc.dart';
import '../../domain/filter.dart';
import 'actions/clear_filter_action.dart';
import 'actions/sort_actions.dart';

class FilterMenu<T extends Object, V extends Object> extends StatelessWidget {
  final Filter<T, V> filter;

  const FilterMenu({
    super.key,
    required this.filter,
    required this.buildCriteria,
  });

  final Widget Function(BuildContext context) buildCriteria;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return Theme(
          data: Theme.of(context).copyWith(
            inputDecorationTheme: InputDecorationTheme(
              // isDense: true,
              // contentPadding: const EdgeInsets.all(10),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade800),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500),
              ),
            ),
          ),
          child: Column(
            children: [
              if (filter is PrimitiveFilter) ...[
                SortActions(filter as PrimitiveFilter<T, V>),
                const Divider(),
              ],
              ClearFilterAction(filter),
              if (filter is PrimitiveFilter) const SizedBox(height: 8),
              buildCriteria(context),
              if (filter is PrimitiveFilter) const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
