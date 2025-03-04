import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nobot/core/models/email/email.dart';

import '../../../core/models/failure/failure.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';
part 'login_form_bloc.freezed.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super(LoginFormState.initial()) {
    on<LoginFormEvent>((event, emit) async {
      if (state.submissionInProgress) return;
      await event.map(
        onEmailInput: (event) {
          emit(state.copyWith(email: event.input));
        },
        onPasswordInput: (event) {
          emit(state.copyWith(password: event.input));
        },
        onSubmit: (event) async {
          emit(state.copyWith(showErrors: true));
        },
      );
    });
  }
}
