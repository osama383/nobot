part of 'form_bloc.dart';

class Input<T extends ValueObject> {
  final String id;
  final T value;

  Input._(this.value, this.id);
  static Input<T> fromProp<T extends ValueObject>(T o) {
    return switch (o) {
      EmailAddress e => Input<T>._(e as T, const Uuid().v1()),
      VString e => Input<T>._(e as T, const Uuid().v1()),
      ValueObject() => throw UnimplementedError(),
    };
  }

  static Input<EmailAddress> email(EmailAddress e) {
    return Input<EmailAddress>._(e, const Uuid().v1());
  }

  static Input<VString> vstring(VString e) {
    return Input<VString>._(e, const Uuid().v1());
  }

  Input<T> copyWith(T newValue) {
    return Input<T>._(newValue, id);
  }

  Widget build(BuildContext context) {
    return switch (this) {
      Input<EmailAddress> e => EmailInput(e),
      Input<VString> e => VStringInput(e),
      Input<T>() => const Placeholder(),
    };
  }
}

class VStringInput extends StatelessWidget {
  final Input<VString> initial;
  const VStringInput(this.initial, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormBloc, FormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: initial.value.valueAsString,
          autovalidateMode: state.showErrors
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          decoration: const InputDecoration(labelText: 'String'),
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

class EmailInput extends StatelessWidget {
  final Input<EmailAddress> initial;
  const EmailInput(this.initial, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormBloc, FormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: initial.value.valueAsString,
          autovalidateMode: state.showErrors
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          decoration: const InputDecoration(labelText: 'Email'),
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

// class EmailInput extends Input<EmailAddress> {
//   EmailInput._(super.value, super.id);
//   EmailInput(EmailAddress value) : super(value, const Uuid().v1());

//   @override
//   EmailInput copyWith(EmailAddress newValue) {
//     return EmailInput._(newValue, id);
//   }
// }

@MappableClass()
class FormState with FormStateMappable {
  final List<Input> inputs;
  final bool isEditing;
  final bool showErrors;
  final bool submissionInProgress;
  final Option<Either<Failure, Unit>> resultOption;

  FormState({
    required this.inputs,
    required this.isEditing,
    required this.showErrors,
    required this.submissionInProgress,
    required this.resultOption,
  });

  factory FormState.initial(List<Input> inputs, bool isEditing) {
    return FormState(
      inputs: inputs,
      isEditing: isEditing,
      showErrors: false,
      submissionInProgress: false,
      resultOption: none(),
    );
  }

  Input<T> input<T extends ValueObject>(String id) {
    return inputs.singleWhere((e) => e.id == id) as Input<T>;
  }
}
