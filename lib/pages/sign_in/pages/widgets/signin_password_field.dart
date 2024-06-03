import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/sign_in_bloc.dart';
import '../../bloc/sign_in_event.dart';
import '../../bloc/sign_in_state.dart';

class SignInPasswordField extends StatelessWidget {
  const SignInPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.key),
            suffixIcon: state.visible
                ? IconButton(icon: const Icon(Icons.visibility), onPressed: () {
              context.read<SignInBloc>().add(const VisibleEvent(false));
            },)
                : IconButton(icon: const Icon(Icons.visibility_off), onPressed: () {
              context.read<SignInBloc>().add(const VisibleEvent(true));
            },),
            hintText: 'Password',
          ),
          obscureText: state.visible ? false : true,
          keyboardType: TextInputType.visiblePassword,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Password is required';
            }
            return null;
          },
          textInputAction: TextInputAction.done,
          onChanged: (value) {
            context.read<SignInBloc>().add(PasswordEvent(value));
          },
        );
      },
    );
  }
}
