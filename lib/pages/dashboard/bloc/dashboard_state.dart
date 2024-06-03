import 'package:dokan_demo/common/entities/dashboard.dart';
import 'package:dokan_demo/common/entities/user.dart';
import 'package:equatable/equatable.dart';

class DashboardStates extends Equatable {
  DashboardStates({this.dashboardList = const <DashboardItem>[]});
  List<DashboardItem> dashboardList;

  DashboardStates copyWith({Profile? userData, List<DashboardItem>? dashboardList}) {
    return DashboardStates(
      dashboardList: dashboardList ?? this.dashboardList,
    );
  }

  @override
  List<Object?> get props => [dashboardList];
}