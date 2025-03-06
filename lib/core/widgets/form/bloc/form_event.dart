part of 'form_bloc.dart';

sealed class FormEvent {}

class OnFormInputEvent extends FormEvent {
  final Input input;

  OnFormInputEvent(this.input);
}

class OnFormSubmitEvent extends FormEvent {}
