import 'package:flutter/material.dart' hide FormState;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/email/email.dart';
import '../../bloc/form_bloc.dart';
import '../../domain/input.dart';

class EmailInput extends StatelessWidget {
  final Input<EmailAddress> initial;
  final String labelText;
  const EmailInput(this.initial, {super.key, required this.labelText});

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
              .add(OnFormInputEvent(initial.copyWith(EmailAddress(value)))),
          validator: (value) =>
              state.input<EmailAddress>(initial.id).value.value.fold(
                    (f) => f.when(
                      invalidFormat: (_) => 'Invalid format',
                      empty: () => 'Required',
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}
