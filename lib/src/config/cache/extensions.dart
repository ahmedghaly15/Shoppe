import 'dart:convert';

import '../../features/login/data/models/login_request_response.dart';
import 'cache_helper.dart';
import 'cache_keys.dart';

extension LoginResponseCacheHelper on CacheHelper {
  Future<void> cacheLoginResponse(LoginRequestResponse response) async {
    final jsonString = jsonEncode(response.toJson());
    await setData(CacheKeys.loginResponse, jsonString);
  }

  Future<LoginRequestResponse?> getCachedLoginResponse() async {
    final jsonString = await getString(CacheKeys.loginResponse);
    if (jsonString == null) return null;
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return LoginRequestResponse.fromJson(jsonMap);
  }

  Future<void> clearLoginCache() async {
    await removeData(CacheKeys.loginResponse);
  }
}
