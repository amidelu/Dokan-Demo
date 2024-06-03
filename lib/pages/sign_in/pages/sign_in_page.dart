import 'package:dokan_demo/global_widgets/custom_button.dart';
import 'package:dokan_demo/global_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../common/values/app_colors.dart';
import '../bloc/sign_in_bloc.dart';
import '../bloc/sign_in_event.dart';
import '../bloc/sign_in_state.dart';
import '../sign_in_controller.dart';
import 'widgets/forgot_password_widget.dart';
import 'widgets/sign_in_top_widget.dart';
import 'widgets/signin_password_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SignInTopWidget(),
            Container(
              margin: EdgeInsets.only(left: 20.r, right: 20.r, top: 0.35.sh),
              padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 20.r),
              decoration: BoxDecoration(
                color: AppColors.secondaryElement,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: BlocBuilder<SignInBloc, SignInState>(
                builder: (context, state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Image.asset(
                      'assets/images/logo.png',
                      height: 150,
                      width: 150,
                    )),
                    const Gap(25),
                    CustomTextFormField(
                      hintText: 'Email address',
                      icon: Icons.account_circle_outlined,
                      keyboardType: TextInputType.multiline,
                      onChanged: (value) {
                        context.read<SignInBloc>().add(StudentIdEvent(value!));
                      },
                    ),
                    const SignInPasswordField(),
                    const ForgotPasswordWidget(),
                    CustomButton(
                      title: 'Login',
                      titleBold: true,
                      onTap: () {
                        SignInController(context: context).handleSignIn();
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
