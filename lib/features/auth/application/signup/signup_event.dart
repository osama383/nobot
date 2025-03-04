part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.onEmailInput(
    EmailAddress input,
  ) = _OnEmailInput;

  const factory SignupEvent.onPasswordInput(
    Password input,
  ) = _OnPasswordInput;

  const factory SignupEvent.onSubmit() = _OnSubmit;
}
