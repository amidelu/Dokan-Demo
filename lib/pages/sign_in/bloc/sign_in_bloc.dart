import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_in_event.dart';
import 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<StudentIdEvent>(_studentIdEvent);
    on<PasswordEvent>(_passwordEvent);
    on<VisibleEvent>(_visibleEvent);
  }

  void _studentIdEvent(StudentIdEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _visibleEvent(VisibleEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(visible: event.visible));
  }
}
