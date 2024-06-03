import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dokan_demo/common/values/constant.dart';
import 'package:flutter/foundation.dart';

class HttpUtil {
  // Creating singleton with internal constructor
  static final HttpUtil _instance = HttpUtil._internal();
  factory HttpUtil() {
    return _instance;
  }
  // Creating dio instance
  late Dio dio;

  // Setting internal constructor with default value which will initialize when instantiate this class
  HttpUtil._internal() {
    BaseOptions options = BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        contentType: 'application/json: charset=utf-8',
        headers: {'auth_token': AppConstants.authToken},
        responseType: ResponseType.json);

    dio = Dio(options);
  }

  Future postApi(String path,
      {dynamic data, Map<String, dynamic>? queryParameters}) async {
    if (kDebugMode) {
      print('Request end point: $path');
      print('Request Data: $data');
      print('Request query parameters: $queryParameters');
    }

    var response = await dio.post(
      path,
      data: jsonEncode(data),
      queryParameters: queryParameters,
    );

    if (kDebugMode) {
      print('Response from post api: ${response.data}');
    }
    return jsonDecode(response.data);
  }

  // Get api
  Future getApi(String path) async {
    if (kDebugMode) {
      print('Request end point: $path');
    }

    var response = await dio.get(path);

    if (kDebugMode) {
      print('Response from post api: ${response.data}');
    }

    if (response.statusCode == 200) {
      return jsonDecode(response.data);
    } else {
      return 'Response status is ${response.statusCode}';
    }
  }
}
