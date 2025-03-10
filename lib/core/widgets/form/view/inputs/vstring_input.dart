import 'package:flutter/material.dart' hide FormState;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/value_object/value_object.dart';
import '../../bloc/form_bloc.dart';
import '../../domain/input.dart';

class VStringInput extends StatelessWidget {
  final Input<VString> initial;
  final String labelText;
  const VStringInput(this.initial, {super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormBloc, FormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: initial.value.valueAsString,
          autovalidateMode: state.showErrors
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          decoration: InputDecoration(labelText: labelText),
          onChanged: (value) => context
              .read<FormBloc>()
              .add(OnFormInputEvent(initial.copyWith(VString(value)))),
          validator: (value) =>
              state.input<VString>(initial.id).value.value.fold(
                    (f) => 'Required',
                    (_) => null,
                  ),
        );
      },
    );
  }
}
