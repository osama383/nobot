import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../../../widgets/hover_builder.dart';
import '../../../widgets/menu_chip.dart';
import '../../controller/table_builder_bloc/table_builder_bloc.dart';

class ActiveFilters<T extends Object> extends StatelessWidget {
  final List<Widget> additionalItems;
  final void Function()? onAllAdditionalItemsCleared;
  const ActiveFilters({
    super.key,
    this.additionalItems = const [],
    this.onAllAdditionalItemsCleared,
  });

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        final activeFilters = state.filters.where(
          (e) => e.appliedCriteria.isNotEmpty,
        );

        return PointerInterceptor(
          child: MenuChip(
            title:
                '${labels.filters} (${activeFilters.length + additionalItems.length})',
            menuChildren: [
              MenuItemButton(
                requestFocusOnHover: false,
                trailingIcon: const Icon(Icons.filter_list_off),
                onPressed: additionalItems.isEmpty && activeFilters.isEmpty
                    ? null
                    : () {
                        context
                            .read<TableBuilderBloc<T>>()
                            .add(TableBuilderEvent.onAllFiltersCleared());
                        onAllAdditionalItemsCleared?.call();
                      },
                child: Text(labels.clearAllFilters),
              ),
              const Divider(),
              if (additionalItems.isEmpty && activeFilters.isEmpty)
                MenuItemButton(
                  requestFocusOnHover: false,
                  child: Text(labels.noFiltersApplied),
                ),
              ...additionalItems,
              ...activeFilters.map((filter) {
                final column = state.columns.firstWhere(
                  (e) => e.id == filter.columnId,
                );
                return HoverBuilder(
                  builder: (context, isHovering) {
                    return MenuItemButton(
                      closeOnActivate: false,
                      requestFocusOnHover: false,
                      trailingIcon: isHovering ? const Icon(Icons.clear) : null,
                      child: Text(column.name),
                      onPressed: () {
                        context
                            .read<TableBuilderBloc<T>>()
                            .add(TableBuilderEvent.onFilterCleared(column.id));
                      },
                    );
                  },
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
