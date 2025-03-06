import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'form_event.dart';
part 'form_state.dart';
part 'form_bloc.mapper.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  FormBloc() : super(FormState.initial(false)) {
    on<FormEvent>((event, emit) async {
      switch (event) {
        case OnFormInputEvent():
          emit(state.copyWith(inputs: state.inputs));
        case OnFormSubmitEvent():
          emit(state.copyWith(showErrors: true));
      }
    });
  }
}
