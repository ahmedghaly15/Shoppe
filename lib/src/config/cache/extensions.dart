part of 'cache.dart';

extension LoginResponseCache on SecureStorageHelper {
  Future<void> cacheLoginResponse(LoginRequestResponse response) async {
    final jsonString = jsonEncode(response.toJson());
    await setSecuredString(CacheKeys.loginResponse, jsonString);
  }

  Future<LoginRequestResponse?> getCachedLoginResponse() async {
    final jsonString = await getSecuredString(CacheKeys.loginResponse);
    if (jsonString == null) return null;
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return LoginRequestResponse.fromJson(jsonMap);
  }

  Future<void> clearLoginCache() async {
    await removeSecuredData(CacheKeys.loginResponse);
  }
}

extension OnboardingCache on SecureStorageHelper {
  /// Sets onboarding as done for a specific user identified by [email].
  Future<void> setOnboardingDone(String email) async {
    DebugLogger.log('SecureStorageHelper : onboarding done for email : $email');
    final key = '${CacheKeys.onboarding}_$email';
    await setSecuredString(key, key);
  }

  /// Checks if onboarding is done for a specific user identified by [email].
  Future<String?> isOnboardingDone(String email) async {
    DebugLogger.log(
      'SecureStorageHelper : isOnboardingDone for email : $email',
    );
    final key = '${CacheKeys.onboarding}_$email';
    return await getSecuredString(key);
  }

  Future<void> clearOnboardingCache(String email) async {
    await removeSecuredData('${CacheKeys.onboarding}_$email');
  }
}
