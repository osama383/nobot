part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required EmailAddress email,
    required String password,
    required bool submissionInProgress,
    required bool showErrors,
    required Option<Either<Failure, Unit>> resultOption,
  }) = _LoginFormState;

  factory LoginFormState.initial() => _LoginFormState(
        email: EmailAddress.empty(),
        password: '',
        submissionInProgress: false,
        showErrors: false,
        resultOption: none(),
      );
}
