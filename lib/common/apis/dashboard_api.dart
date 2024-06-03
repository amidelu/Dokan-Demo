
import 'package:dokan_demo/common/utils/http_util.dart';

import '../entities/dashboard.dart';

class DashboardApi {
  static Future<DashboardEntity> getDashboardData(int comCode, String studentId) async {
    final response = await HttpUtil().getApi('averroes/GetDashBoardData?comCode=$comCode&studentId=$studentId');

    return DashboardEntity.fromJson(response);
  }
}