import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../../core/models/assets/assets.dart';
import '../../../../core/models/value_object/value_object.dart';
import '../../../../core/repository.dart';
import '../../../../core/widgets/common_loading.dart';
import '../../../../core/widgets/form/domain/input.dart';
import '../../../../core/widgets/form/view/form_modal/short_form_modal.dart';
import '../../../../injection.dart';

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
            trailing: const _AddVehicleButton(),
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
          title: labels.addVehicle,
          inputs: [
            Input.vstring(VString(''), labelText: labels.name),
            Input.noValidation<String>('', labelText: labels.decalNumber),
          ],
          submitHook: (inputs) async {
            await sl<Repository>().create(
              Entities.assets,
              Vehicle(
                id: '',
                name: inputs[0].value as VString,
                decalNumber: inputs[1].value as String,
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
                                      title: labels.editVehicle,
                                      inputs: [
                                        Input.vstring(
                                          vehicle.name,
                                          labelText: labels.name,
                                        ),
                                        Input.noValidation(
                                          vehicle.decalNumber,
                                          labelText: labels.decalNumber,
                                        ),
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
