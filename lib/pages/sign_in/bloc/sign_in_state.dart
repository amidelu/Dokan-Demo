// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class SignInState extends Equatable {
  final String email;
  final String password;
  bool visible;

  SignInState({
    this.email = '',
    this.password = '',
    this.visible = false,
  });

  SignInState copyWith({
    String? email,
    String? password,
    bool? visible,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      visible: visible ?? this.visible,
    );
  }

  @override
  List<Object?> get props => [email, password, visible];
}
