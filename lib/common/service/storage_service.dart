import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../entities/user.dart';
import '../values/constant.dart';

class StorageService {
  late final SharedPreferences _prefs;

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  bool getDeviceFirstOpen() {
    return _prefs.getBool(AppConstants.deviceOpenFirstTime) ?? false;
  }

  bool getIsLoggedIn() {
    return _prefs.getString(AppConstants.userTokenKey) == null ? false : true;
  }

  Future<bool> removeData(String key) {
    return _prefs.remove(key);
  }

  Profile getUserProfile() {
    var profile = _prefs.getString(AppConstants.userProfile) ?? '';
    if (profile.isNotEmpty) {
      return Profile.fromJson(jsonDecode(profile));
    }
    return Profile();
  }
}