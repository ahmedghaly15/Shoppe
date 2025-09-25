part of '../utils.dart';

bool isUserLoggedIn = false;

Future<void> checkIfUserIsLoggedIn(
  SecureStorageHelper secureStorageHelper,
) async {
  final cachedLoginResponse = await secureStorageHelper
      .getCachedLoginResponse();
  isUserLoggedIn = cachedLoginResponse != null;
}
