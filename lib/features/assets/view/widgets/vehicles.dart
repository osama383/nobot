import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../../core/models/assets/assets.dart';
import '../../../../core/models/value_object/value_object.dart';
import '../../../../core/repository.dart';
import '../../../../core/widgets/common_loading.dart';
import '../../../../core/widgets/form/bloc/form_bloc.dart';
import '../../../../injection.dart';
import 'vehicle_form.dart';

class Vehicles extends StatelessWidget {
  const Vehicles({super.key});

  @override
  Widget build(BuildContext context) {
    var labels = context.localizationLabels;
    return Card.filled(
      child: Column(
        children: [
          ListTile(
            title: Text(
              labels.vehicles,
              style: context.textTheme.headlineSmall,
            ),
            trailing: _AddVehicleButton(),
          ),
          context.useMobileLayout
              ? const _Vehicles()
              : const Expanded(
                  child: SingleChildScrollView(child: _Vehicles()),
                ),
        ],
      ),
    );
  }
}

class _AddVehicleButton extends StatelessWidget {
  const _AddVehicleButton();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return TextButton(
      onPressed: () {
        shortFormModal(
          inputs: [
            Input.vstring(VString.empty()),
          ],
          submitHook: (inputs) async {
            await sl<Repository>().create(
              Entities.assets,
              Vehicle(
                id: 'id',
                name: inputs[0].value as VString,
                decalNumber: '',
              ),
            );
          },
        ).show();
      },
      child: Text(labels.addVehicle),
    );
  }
}

class _Vehicles extends StatelessWidget {
  const _Vehicles();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return StreamBuilder<List<Asset>>(
        stream: sl<Repository>().list(Entities.assets),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? const CommonLoading()
              : snapshot.hasError
                  ? Text(labels.unknownError)
                  : snapshot.data!.isEmpty
                      ? Text(labels.noVehiclesToDisplay)
                      : Column(
                          children: [
                            ...snapshot.data!.whereType<Vehicle>().map(
                              (vehicle) {
                                return ListTile(
                                  title: Text(vehicle.name.getOrCrash),
                                  subtitle: vehicle.decalNumber.isEmpty
                                      ? null
                                      : Text(vehicle.decalNumber),
                                  onTap: () async {
                                    shortFormModal(
                                      inputs: [
                                        Input.vstring(vehicle.name),
                                      ],
                                      submitHook: (inputs) async {
                                        await sl<Repository>().create(
                                          Entities.assets,
                                          vehicle.copyWith(
                                            name: inputs[0].value as VString,
                                          ),
                                        );
                                      },
                                    ).show();
                                  },
                                );
                              },
                            ),
                          ],
                        );
        });
  }
}
