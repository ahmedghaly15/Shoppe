import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:shared_preferences/shared_preferences.dart';

import 'cache_keys.dart';

// remove FutureProvider and use Provider
final sharedPrefProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError(); // will be overridden in main
});

final cacheHelperProvider = Provider<CacheHelper>((ref) {
  throw UnimplementedError(); // will be overridden in main
});

class CacheHelper {
  final SharedPreferences _sharedPref;

  CacheHelper(this._sharedPref);

  /// Removes a value from SharedPreferences with given [key].
  Future<bool> removeData(String key) async {
    debugPrint('SharedPrefHelper : data with key : $key has been removed');
    return _sharedPref.remove(key);
  }

  /// Removes all keys and values in the SharedPreferences
  Future<bool> clearAllData() async {
    debugPrint('SharedPrefHelper : all data has been cleared');
    return _sharedPref.clear();
  }

  /// Saves a [value] with a [key] in the SharedPreferences.
  Future<bool> setData(String key, value) async {
    debugPrint("SharedPrefHelper : setData with key : $key and value : $value");
    switch (value.runtimeType) {
      case const (String):
        return await _sharedPref.setString(key, value);
      case const (int):
        return await _sharedPref.setInt(key, value);
      case const (bool):
        return await _sharedPref.setBool(key, value);
      case const (double):
        return await _sharedPref.setDouble(key, value);
      default:
        return false;
    }
  }

  /// Gets a bool value from SharedPreferences with given [key].
  Future<bool?> getBool(String key) async {
    debugPrint('SharedPrefHelper : getBool with key : $key');
    return _sharedPref.getBool(key);
  }

  /// Gets a double value from SharedPreferences with given [key].
  Future<double?> getDouble(String key) async {
    debugPrint('SharedPrefHelper : getDouble with key : $key');
    return _sharedPref.getDouble(key);
  }

  /// Gets an int value from SharedPreferences with given [key].
  Future<int?> getInt(String key) async {
    debugPrint('SharedPrefHelper : getInt with key : $key');
    return _sharedPref.getInt(key);
  }

  /// Gets an String value from SharedPreferences with given [key].
  Future<String?> getString(String key) async {
    debugPrint('SharedPrefHelper : getString with key : $key');
    return _sharedPref.getString(key);
  }

  /// Sets onboarding as done for a specific user identified by [email].
  Future<void> setOnboardingDone(String email) async {
    debugPrint('SharedPrefHelper : onboarding done for email : $email');
    final key = '${CacheKeys.onboarding}_$email';
    await Future.wait([
      setData(CacheKeys.loggedInUserEmail, email),
      setData(key, true),
    ]);
  }

  /// Checks if onboarding is done for a specific user identified by [email].
  Future<bool> isOnboardingDone(String email) async {
    debugPrint('SharedPrefHelper : isOnboardingDone for email : $email');
    final key = '${CacheKeys.onboarding}_$email';
    return await getBool(key) ?? false;
  }
}
