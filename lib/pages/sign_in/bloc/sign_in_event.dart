import 'package:equatable/equatable.dart';

abstract class SignInEvent extends Equatable{
  const SignInEvent();
}

class StudentIdEvent extends SignInEvent {
  final String email;

  const StudentIdEvent(this.email);

  @override
  List<Object?> get props => [email];
}

class PasswordEvent extends SignInEvent {
  final String password;

  const PasswordEvent(this.password);

  @override
  List<Object?> get props => [password];
}

class VisibleEvent extends SignInEvent {
  final bool visible;

  const VisibleEvent(this.visible);

  @override
  List<Object?> get props => [visible];
}
