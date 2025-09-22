part of '../utils.dart';

bool isUserLoggedIn = false;

Future<void> checkIfUserIsLoggedIn(CacheHelper cacheHelper) async {
  final cachedLoginResponse = await cacheHelper.getCachedLoginResponse();
  isUserLoggedIn = cachedLoginResponse != null;
}
