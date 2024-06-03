

import 'package:dokan_demo/common/utils/http_util.dart';

import '../entities/user.dart';

class UserAPI {
  static Future<UserLoginResponseEntity> logIn(LoginRequestEntity? params) async {
    var response = await HttpUtil().postApi(
      'Login',
      data: params?.toJson(),
    );
    return UserLoginResponseEntity.fromJson(response);
  }
}