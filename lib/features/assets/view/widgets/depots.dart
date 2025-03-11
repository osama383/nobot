import 'package:flutter/material.dart';
import 'package:nobot/core/models/address/address.dart';
import 'package:nobot/core/models/assets/assets.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../../core/models/value_object/value_object.dart';
import '../../../../core/repository.dart';
import '../../../../core/widgets/common_loading.dart';
import '../../../../core/widgets/form/domain/input.dart';
import '../../../../core/widgets/form/view/form_modal/short_form_modal.dart';
import '../../../../injection.dart';

class Depots extends StatelessWidget {
  const Depots({super.key});

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
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
                shortFormModal(
                  title: labels.addDepot,
                  inputs: [
                    Input.vstring(
                      VString.empty(),
                      labelText: labels.name,
                    ),
                    Input.address(
                      Address.empty(),
                      labelText: labels.address,
                    ),
                  ],
                  submitHook: (inputs) async {
                    await sl<Repository>().create(
                      Entities.asset,
                      Depot(
                        id: '',
                        name: inputs[0].value as VString,
                        address: inputs[1].value as Address,
                      ),
                    );
                  },
                ).show();
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
  }
}

class _Depots extends StatelessWidget {
  const _Depots();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return StreamBuilder<List<Asset>>(
        stream: sl<Repository>().list(Entities.asset),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? const CommonLoading()
              : snapshot.hasError
                  ? Text(labels.unknownError)
                  : Column(
                      children: [
                        if (snapshot.data!.isEmpty)
                          Text(labels.noDepotsToDisplay),
                        ...snapshot.data!.whereType<Depot>().map(
                              (depot) => ListTile(
                                title: Text(depot.name.getOrCrash),
                                subtitle: Text(
                                  depot.address.formattedAddress.getOrCrash,
                                ),
                                onTap: () async {
                                  shortFormModal(
                                    title: labels.editDepot,
                                    inputs: [
                                      Input.vstring(depot.name,
                                          labelText: labels.name),
                                      Input.address(depot.address,
                                          labelText: labels.address),
                                    ],
                                    submitHook: (inputs) async {
                                      await sl<Repository>().edit(
                                        Entities.asset,
                                        depot.copyWith(
                                          name: inputs[0].value as VString,
                                          address: inputs[1].value as Address,
                                        ),
                                      );
                                    },
                                  ).show();
                                },
                              ),
                            ),
                      ],
                    );
        });
  }
}
