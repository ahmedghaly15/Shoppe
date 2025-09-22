import 'dart:convert';

import 'package:flutter/material.dart' show debugPrint;

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

extension OnboardingCacheHelper on CacheHelper {
  /// Sets onboarding as done for a specific user identified by [email].
  Future<void> setOnboardingDone(String email) async {
    debugPrint('SharedPrefHelper : onboarding done for email : $email');
    final key = '${CacheKeys.onboarding}_$email';
    await setData(key, true);
  }

  /// Checks if onboarding is done for a specific user identified by [email].
  Future<bool> isOnboardingDone(String email) async {
    debugPrint('SharedPrefHelper : isOnboardingDone for email : $email');
    final key = '${CacheKeys.onboarding}_$email';
    return await getBool(key) ?? false;
  }

  Future<void> clearOnboardingCache(String email) async {
    await removeData('${CacheKeys.onboarding}_$email');
  }
}
