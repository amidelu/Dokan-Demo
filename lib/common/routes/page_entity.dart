import 'package:dokan_demo/global.dart';
import 'package:dokan_demo/pages/dashboard/bloc/dashboard_bloc.dart';
import 'package:dokan_demo/pages/dashboard/pages/dashboard_page.dart';
import 'package:dokan_demo/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:dokan_demo/pages/sign_in/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_routes.dart';

class AppPages {
  static List<PageEntity> routes() {
    return [
      PageEntity(
        route: AppRoutes.signIn,
        page: const SignInPage(),
        bloc: BlocProvider(create: (_) => SignInBloc()),
      ),
      PageEntity(
        route: AppRoutes.dashboard,
        page: const DashboardPage(),
        bloc: BlocProvider(create: (_) => DashboardBlocs()),
      ),
    ];
  }

  // All Bloc Provider list for main.dart
  static List<dynamic> allBlocProviders(BuildContext context) {
    List<dynamic> blocProviders = <dynamic>[];

    for (var data in routes()) {
      blocProviders.add(data.bloc);
    }
    return blocProviders;
  }

  // On Generate Route
  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      var result = routes().where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();
        if (result.first.route == AppRoutes.signIn && deviceFirstOpen) {
          bool isLoggedIn = Global.storageService.getIsLoggedIn();
          if (isLoggedIn) {
            return MaterialPageRoute(builder: (_) => const DashboardPage(), settings: settings);
          }
          return MaterialPageRoute(builder: (_) => const SignInPage(), settings: settings);
        }
        return MaterialPageRoute(builder: (_) => result.first.page, settings: settings);
      }
    }
    return MaterialPageRoute(builder: (_) => const SignInPage(), settings: settings);
  }
}

// Unify BlocProvider, routes and pages
class PageEntity {
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({
    required this.route,
    required this.page,
    this.bloc,
  });
}
