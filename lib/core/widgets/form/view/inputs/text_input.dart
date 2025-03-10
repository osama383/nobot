import 'package:flutter/material.dart' hide FormState;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/value_object/value_object.dart';
import '../../bloc/form_bloc.dart';
import '../../domain/input.dart';

class TextInput extends StatelessWidget {
  final Input<AlwaysValid<String>> initial;
  const TextInput(this.initial, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormBloc, FormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: initial.value.valueAsString,
          decoration: const InputDecoration(labelText: 'String'),
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
