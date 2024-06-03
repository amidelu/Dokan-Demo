import 'package:dokan_demo/common/entities/dashboard.dart';
import 'package:dokan_demo/common/entities/user.dart';
import 'package:dokan_demo/common/values/app_colors.dart';
import 'package:dokan_demo/global_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../bloc/dashboard_bloc.dart';
import '../bloc/dashboard_state.dart';
import '../dashboard_controller.dart';
import 'widgets/dashboard_list_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late Profile _profile;

  @override
  void initState() {
    super.initState();
    _profile = DashboardController(context: context).userProfile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar('Dashboard'),
      drawer: BuildDrawerWidget(
        userData: _profile,
      ),
      body: BlocBuilder<DashboardBlocs, DashboardStates>(
        builder: (context, state) {
          if (state.dashboardList.isEmpty) {
            DashboardController(context: context).getUserData();
          }

          return DashboardListWidget();
        },
      ),
    );
  }
}
