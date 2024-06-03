import 'package:bloc/bloc.dart';

import 'dashboard_event.dart';
import 'dashboard_state.dart';

class DashboardBlocs extends Bloc<DashboardEvents, DashboardStates> {
  DashboardBlocs() : super(DashboardStates()) {
    on<UserItemEvents>(_userItemEvents);
  }

  void _userItemEvents(UserItemEvents events, Emitter<DashboardStates> emit) {
    emit(state.copyWith(dashboardList: events.dashboardList));
  }
}