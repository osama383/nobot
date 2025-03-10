import 'package:flutter/material.dart' hide FormState;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/value_object/value_object.dart';
import '../../bloc/form_bloc.dart';
import '../../domain/input.dart';

class TextInput extends StatelessWidget {
  final Input<AlwaysValid<String>> initial;
  final String labelText;
  const TextInput(this.initial, {super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormBloc, FormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: initial.value.valueAsString,
          decoration: InputDecoration(labelText: labelText),
          onChanged: (value) => context.read<FormBloc>().add(
                OnFormInputEvent(
                  initial.copyWith(AlwaysValid<String>(value)),
                ),
              ),
        );
      },
    );
  }
}
