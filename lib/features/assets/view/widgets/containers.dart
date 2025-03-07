import 'package:flutter/material.dart' hide Container;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/assets/assets.dart';
import '../../../../core/util/extensions/extensions.dart';
import '../../../../core/widgets/common_loading.dart';
import '../../controller/assets_bloc/assets_bloc.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    var labels = context.localizationLabels;
    return BlocBuilder<AssetsBloc, AssetsState>(
      builder: (context, state) {
        return Card.filled(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  labels.containers,
                  style: context.textTheme.headlineSmall,
                ),
                trailing: TextButton(
                  onPressed: () async {
                    // final result = await ContainerForm.add().show();
                    // if (result is ContainerModel && context.mounted) {
                    //   context.read<AssetsBloc>().add(
                    //         const AssetsEvent.fetchContainers(),
                    //       );
                    // }
                  },
                  child: Text(labels.addContainer),
                ),
              ),
              context.useMobileLayout
                  ? const _Containers()
                  : const Expanded(
                      child: SingleChildScrollView(child: _Containers()),
                    ),
            ],
          ),
        );
      },
    );
  }
}

class _Containers extends StatelessWidget {
  const _Containers();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<AssetsBloc, AssetsState>(
      builder: (context, state) {
        return state.containersOrFailureOption.fold(
          () => const CommonLoading(tilesCount: 2),
          (containersOrFailure) => containersOrFailure.fold(
            (failure) => Text(labels.unknownError),
            (containers) {
              if (containers.isEmpty) {
                return Text(labels.noContainersToDisplay);
              }
              return Column(
                children: [
                  ...(List<Container>.from(containers)
                        ..sort(
                          (a, b) => a.capacity
                              .unitsExact()
                              .compareTo(b.capacity.unitsExact()),
                        ))
                      .map(
                    (container) {
                      return ListTile(
                        title: Text(container.name.getOrCrash),
                        subtitle: Text(
                          labels.volumeValueWithUnit(container.capacity),
                        ),
                        onTap: () async {
                          // final result =
                          //     await ContainerForm.edit(container).show();
                          // if (result is ContainerModel && context.mounted) {
                          //   context.read<AssetsBloc>().add(
                          //         const AssetsEvent.fetchContainers(),
                          //       );
                          // }
                        },
                      );
                    },
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
