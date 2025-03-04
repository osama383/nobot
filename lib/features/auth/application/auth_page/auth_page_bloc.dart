import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_page_event.dart';
part 'auth_page_state.dart';
part 'auth_page_bloc.freezed.dart';

class AuthPageBloc extends Bloc<AuthPageEvent, AuthPageState> {
  AuthPageBloc() : super(AuthPageState.initial()) {
    on<AuthPageEvent>((event, emit) async {
      event.map(
        onModeChange: (event) {
          emit(state.copyWith(mode: event.mode));
        },
      );
    });
  }
}
