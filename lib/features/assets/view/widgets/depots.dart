import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../../core/widgets/common_loading.dart';
import '../../controller/assets_bloc/assets_bloc.dart';

class Depots extends StatelessWidget {
  const Depots({super.key});

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<AssetsBloc, AssetsState>(
      builder: (context, state) {
        return Card.filled(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  labels.depots,
                  style: context.textTheme.headlineSmall,
                ),
                trailing: TextButton(
                  child: Text(labels.addDepot),
                  onPressed: () async {
                    // final result = await DepotForm.add().show();
                    // if (context.mounted && result is DepotModel) {
                    //   context
                    //       .read<AssetsBloc>()
                    //       .add(const AssetsEvent.fetchDepots());
                    // }
                  },
                ),
              ),
              context.useMobileLayout
                  ? const _Depots()
                  : const Expanded(
                      child: SingleChildScrollView(child: _Depots()),
                    ),
            ],
          ),
        );
      },
    );
  }
}

class _Depots extends StatelessWidget {
  const _Depots();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<AssetsBloc, AssetsState>(
      builder: (context, state) {
        return state.depotsOrFailureOption.fold(
          () => const CommonLoading(),
          (depotsOrFailure) => depotsOrFailure.fold(
            (failure) => Text(labels.unknownError),
            (depots) {
              return Column(
                children: [
                  if (depots.isEmpty) Text(labels.noDepotsToDisplay),
                  ...depots.map(
                    (depot) => ListTile(
                      title: Text(depot.name.getOrCrash),
                      subtitle: Text(depot.address),
                      onTap: () async {
                        // final result = await DepotForm.edit(depot).show();
                        // if (context.mounted && result is DepotModel) {
                        //   context
                        //       .read<AssetsBloc>()
                        //       .add(const AssetsEvent.fetchDepots());
                        // }
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
