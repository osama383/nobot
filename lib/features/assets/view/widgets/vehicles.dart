import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../../core/models/assets/assets.dart';
import '../../../../core/repository.dart';
import '../../../../core/widgets/common_loading.dart';
import '../../../../injection.dart';
import '../../controller/assets_bloc/assets_bloc.dart';

class Vehicles extends StatelessWidget {
  const Vehicles({super.key});

  @override
  Widget build(BuildContext context) {
    var labels = context.localizationLabels;
    return StreamBuilder<List<Asset>>(
        stream: sl<Repository>().list<Asset>(Entities.assets),
        builder: (context, snapshot) {
          return Card.filled(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    labels.vehicles,
                    style: context.textTheme.headlineSmall,
                  ),
                  trailing: TextButton(
                    onPressed: () async {
                      // final result = await VehicleForm.add().show();
                      // if (context.mounted && result is Vehicle) {
                      //   context
                      //       .read<AssetsBloc>()
                      //       .add(const AssetsEvent.fetchVehicles());
                      // }
                    },
                    child: Text(labels.addVehicle),
                  ),
                ),
                if (snapshot.hasData)
                  ...snapshot.data!.map((e) => ListTile(
                        title: Text(e.toString()),
                      )),
                // context.useMobileLayout
                //     ? const _Vehicles()
                //     : const Expanded(
                //         child: SingleChildScrollView(child: _Vehicles()),
                //       ),
              ],
            ),
          );
        });
  }
}

class _Vehicles extends StatelessWidget {
  const _Vehicles();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BlocBuilder<AssetsBloc, AssetsState>(
      builder: (context, state) {
        return state.vehiclesOrFailureOption.fold(
          () => const CommonLoading(),
          (e) => e.fold(
            (failure) => Text(labels.unknownError),
            (vehicles) {
              if (vehicles.isEmpty) {
                return Text(labels.noVehiclesToDisplay);
              }
              return Column(
                children: [
                  ...vehicles.map(
                    (vehicle) {
                      return ListTile(
                        title: Text(vehicle.name.getOrCrash),
                        subtitle: vehicle.decalNumber.isEmpty
                            ? null
                            : Text(vehicle.decalNumber),
                        onTap: () async {
                          // final result = await VehicleForm.edit(vehicle).show();
                          // if (context.mounted && result is Vehicle) {
                          //   context
                          //       .read<AssetsBloc>()
                          //       .add(const AssetsEvent.fetchVehicles());
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
