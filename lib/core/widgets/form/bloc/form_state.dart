part of 'form_bloc.dart';

sealed class Input<T> {
  final T value;

  Input(this.value);
  // bool get isValid;
}

class StringInput extends Input<String> {
  StringInput(super.value);

  // bool get isValid;
}

@MappableClass()
class FormState with FormStateMappable {
  final List<Input> inputs;
  final bool isEditing;
  final bool showErrors;
  final bool submissionInProgress;

  FormState({
    required this.inputs,
    required this.isEditing,
    required this.showErrors,
    required this.submissionInProgress,
  });

  factory FormState.initial(bool isEditing) {
    return FormState(
      inputs: [],
      isEditing: isEditing,
      showErrors: false,
      submissionInProgress: false,
    );
  }
}
