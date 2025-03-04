import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/email/email.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../core/models/password/password.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupState.initial()) {
    on<SignupEvent>((event, emit) async {
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
