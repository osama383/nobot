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
            Input.optional<String>(''),
          ],
          submitHook: (inputs) async {
            await sl<Repository>().create(
              Entities.assets,
              Vehicle(
                id: '',
                name: inputs[0].value as VString,
                decalNumber: inputs[1].value.getOrCrash as String,
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
                                  subtitle: vehicle.id.isEmpty
                                      ? null
                                      : Text(vehicle.id),
                                  onTap: () async {
                                    shortFormModal(
                                      inputs: [
                                        Input.vstring(vehicle.name),
                                        Input.optional(vehicle.decalNumber),
                                      ],
                                      submitHook: (inputs) async {
                                        await sl<Repository>().edit(
                                          Entities.assets,
                                          vehicle.copyWith(
                                            name: inputs[0].value as VString,
                                            decalNumber:
                                                inputs[1].value as String,
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
