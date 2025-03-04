part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.onEmailInput(
    EmailAddress input,
  ) = _OnEmailInput;

  const factory LoginFormEvent.onPasswordInput(
    Password input,
  ) = _OnPasswordInput;

  const factory LoginFormEvent.onSubmit() = _OnSubmit;
}
