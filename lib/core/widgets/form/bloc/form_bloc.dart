import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/models/email/email.dart';
import 'package:nobot/core/models/value_object/value_object.dart';
import 'package:uuid/uuid.dart';

part 'form_event.dart';
part 'form_state.dart';
part 'form_bloc.mapper.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  FormBloc({
    required List<Input> inputs,
    required void Function(List<Input> inputs) onSubmit,
  }) : super(FormState.initial(inputs, false)) {
    on<FormEvent>((event, emit) async {
      switch (event) {
        case OnFormInputEvent():
          final index = state.inputs.indexWhere((e) => e.id == event.input.id);
          if (index == -1) return;
          final inputs = List<Input>.from(state.inputs)..[index] = event.input;
          emit(state.copyWith(inputs: inputs));
        case OnFormSubmitEvent():
          emit(state.copyWith(showErrors: true));
          if (state.inputs.any((e) => e.value.isInValid)) return;
          onSubmit(state.inputs);
      }
    });
  }
}
