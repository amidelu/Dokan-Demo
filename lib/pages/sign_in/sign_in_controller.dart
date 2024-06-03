import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:dokan_demo/common/apis/user_api.dart';
import 'package:dokan_demo/common/entities/user.dart';
import 'package:dokan_demo/common/routes/app_routes.dart';
import 'package:dokan_demo/common/utils/utils.dart';
import 'package:dokan_demo/common/values/constant.dart';
import 'package:dokan_demo/global.dart';
import 'package:dokan_demo/pages/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'bloc/sign_in_bloc.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  void handleSignIn() async {
    try {
      final state = context.read<SignInBloc>().state;
      String email = state.email;
      String password = state.password;
      if (email.isEmpty) {
        Utils.snackBar(context, 'Warning', 'Email is required', type: ContentType.warning);
        return;
      }
      if (password.isEmpty) {
        Utils.snackBar(context, 'Warning', 'Password is required', type: ContentType.warning);
        return;
      }
      LoginRequestEntity loginRequestEntity = LoginRequestEntity();
      loginRequestEntity.comCode = '0';
      loginRequestEntity.email = email;
      loginRequestEntity.password = password;

      await loginRequest(loginRequestEntity);
      if (context.mounted) {
        await DashboardController(context: context).getUserData();
      }
    } catch (e) {
      debugPrint('Error from $runtimeType top try block: $e');
    }
  }

  // API calling method
  Future<void> loginRequest(LoginRequestEntity loginRequestEntity) async {
    EasyLoading.show(
      indicator: const CircularProgressIndicator(),
      maskType: EasyLoadingMaskType.clear,
      dismissOnTap: true,
    );

    var result = await UserAPI.logIn(loginRequestEntity);
    if (result.status!) {
      try {
        Global.storageService.setBool(AppConstants.deviceOpenFirstTime, true);
        Global.storageService.setString(AppConstants.userProfile, jsonEncode(result.profile!.first));
        Global.storageService.setString(AppConstants.userTokenKey, result.authToken!);

        if (context.mounted) {
          Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.dashboard, (route) => false);
        }
        EasyLoading.dismiss();
      } catch (e) {
        debugPrint('Saving local storage error: ${e.toString()}');
      }
    } else {
      EasyLoading.dismiss();
      if (context.mounted) {
        Utils.snackBar(context, 'Error', result.message ?? 'Some error occurred, try again later', type: ContentType.failure);
      }
    }
  }
}
