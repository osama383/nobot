import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../../controller/table_builder_bloc/table_builder_bloc.dart';

class FoundCount<T extends Object> extends StatelessWidget {
  const FoundCount({super.key});

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return PointerInterceptor(
          child: Text(
            '${state.filteredItems.length} / ${labels.getFoundCount(state.items.length)}',
          ),
        );
      },
    );
  }
}
