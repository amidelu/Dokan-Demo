import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:dokan_demo/common/apis/dashboard_api.dart';
import 'package:dokan_demo/common/entities/user.dart';
import 'package:dokan_demo/common/utils/utils.dart';
import 'package:dokan_demo/global.dart';
import 'package:dokan_demo/pages/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'bloc/dashboard_event.dart';

class DashboardController {
  late BuildContext context;
  // Get method for profile data
  Profile get userProfile => Global.storageService.getUserProfile();

  DashboardController._internal();
  static final DashboardController _singleton = DashboardController._internal();

  factory DashboardController({required BuildContext context}) {
    _singleton.context = context;
    return _singleton;
  }

  Future<void> getUserData() async {
    Utils.loadingWidget();

    int comCode = userProfile.comCode ?? 0;
    String studentId = userProfile.studentId ?? '';

    var result = await DashboardApi.getDashboardData(comCode, studentId);
    if (result.status!) {
      if (context.mounted) {
        context.read<DashboardBlocs>().add(UserItemEvents(result.dashboardList));
      }
      EasyLoading.dismiss();
    } else {
      EasyLoading.dismiss();
      if (context.mounted) {
        Utils.snackBar(
          context,
          'Error',
          result.message ?? 'Some error occurred, try again later',
          type: ContentType.failure,
        );
      }
    }
  }
}
