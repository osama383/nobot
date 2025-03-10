part of 'form_bloc.dart';

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
