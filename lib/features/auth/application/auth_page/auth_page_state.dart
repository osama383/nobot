part of 'auth_page_bloc.dart';

@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState({
    required AuthMode mode,
  }) = _AuthPageState;

  factory AuthPageState.initial() => const _AuthPageState(
        mode: AuthMode.signIn,
      );
}

enum AuthMode { signIn, signUp, requestPasswordRest }
