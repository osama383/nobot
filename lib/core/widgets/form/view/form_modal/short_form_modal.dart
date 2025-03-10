import 'package:flutter/material.dart' hide FormState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/widgets/form/bloc/form_bloc.dart';
import 'package:nobot/core/widgets/modal_builder/modal_builder.dart';

import '../../domain/input.dart';

ModalBuilder<FormBloc> shortFormModal({
  required List<Input> inputs,
  required Future<void> Function(List<Input> inputs) submitHook,
}) {
  return ShortFormModal(
    inputs: inputs,
    submitHook: submitHook,
  );
}

class ShortFormModal extends ShortModal<FormBloc> {
  final FormBloc _bloc;

  ShortFormModal({
    required List<Input> inputs,
    required Future<void> Function(List<Input> inputs) submitHook,
  }) : _bloc = FormBloc(
          inputs: inputs,
          submitHook: submitHook,
        );

  // List<Input> inputs(Option<Vehicle> vehicleOption) {
  //   return vehicleOption.fold(
  //     () => [Input.vstring(VString(''))],
  //     (vehicle) => [
  //       Input.vstring(vehicle.name),
  //     ],
  //   );
  // }

  // void Function(List<Input> inputs) submitHook(
  //   Option<Vehicle> vehicleOption,
  // ) {
  //   return vehicleOption.fold(
  //     () {
  //       return (inputs) {
  //         sl<Repository>().create(
  //           Entities.assets,
  //           Vehicle(
  //             id: 'id',
  //             name: inputs[0].value as VString,
  //             decalNumber: '',
  //           ),
  //         );
  //       };
  //     },
  //     (vehicle) {
  //       return (inputs) {
  //         sl<Repository>().create(
  //           Entities.assets,
  //           vehicle.copyWith(
  //             id: 'id',
  //             name: inputs[0].value as VString,
  //             decalNumber: '',
  //           ),
  //         );
  //       };
  //     },
  //   );
  // }

  @override
  FormBloc? get bloc => _bloc;

  @override
  Widget content(BuildContext context) {
    return BlocConsumer<FormBloc, FormState>(
      listener: (context, state) {
        state.resultOption.fold(
          () => null,
          (e) => e.fold(
            (f) => null,
            (unit) => Navigator.of(context).pop(),
          ),
        );
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(state.inputs.length * 2 - 1, (index) {
              return (index % 2 == 0)
                  ? state.inputs[(index / 2).round()].build(context)
                  : const SizedBox(height: 16);
            }),
          ],
        );
      },
    );
  }

  @override
  Stream<bool> get isBusyStream => bloc!.stream.map(
        (e) => e.submissionInProgress,
      );

  @override
  Widget primaryAction(BuildContext context) {
    return FilledButton(
      onPressed: () {
        context.read<FormBloc>().add(OnFormSubmitEvent());
      },
      child: const Text('Save'),
    );
  }

  @override
  String title(BuildContext context) {
    return _bloc.state.isEditing ? 'Edit vehicle' : 'Add vehicle';
  }
}
