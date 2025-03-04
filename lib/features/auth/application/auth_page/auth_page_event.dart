part of 'auth_page_bloc.dart';

@freezed
class AuthPageEvent with _$AuthPageEvent {
  const factory AuthPageEvent.onModeChange(
    AuthMode mode,
  ) = _OnModeChange;
}
