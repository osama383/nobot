part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required EmailAddress email,
    required Password password,
    required bool submissionInProgress,
    required bool showErrors,
    required Option<Either<Failure, Unit>> resultOption,
  }) = _SignupState;

  factory SignupState.initial() => _SignupState(
        email: EmailAddress.empty(),
        password: Password.empty(),
        submissionInProgress: false,
        showErrors: false,
        resultOption: none(),
      );
}
