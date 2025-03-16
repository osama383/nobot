import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../../core/models/customer/customer.dart';
import '../../../../core/table-builder/controller/table_builder_bloc/table_builder_bloc.dart';
import '../../../../core/table-builder/view/actions/active_filters.dart';
import '../../../../core/table-builder/view/actions/mega_menu.dart';

class TableActions extends StatelessWidget {
  const TableActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<Customer>, TableBuilderState<Customer>>(
      builder: (context, state) {
        return context.useMobileLayout
            ? const Row(
                children: [
                  Expanded(
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _FoundCount(),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : const Row(
                children: [
                  ShowHideGroups<Customer>(),
                  SizedBox(width: 16),
                  ActiveFilters<Customer>(),
                  Spacer(),
                  _FoundCount(),
                ],
              );
      },
    );
  }
}

class _FoundCount extends StatelessWidget {
  const _FoundCount();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<TableBuilderBloc<Customer>, TableBuilderState<Customer>>(
      builder: (context, state) {
        return Text(
          '${state.filteredItems.length} / ${labels.getFoundCount(state.items.length)}',
        );
      },
    );
  }
}
