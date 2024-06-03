import 'package:dokan_demo/common/entities/dashboard.dart';
import 'package:equatable/equatable.dart';

abstract class DashboardEvents extends Equatable {}

class UserItemEvents extends DashboardEvents {
  UserItemEvents(this.dashboardList);
  final List<DashboardItem>? dashboardList;

  @override
  List<Object?> get props => [dashboardList];
}
