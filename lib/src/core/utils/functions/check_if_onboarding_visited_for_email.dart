part of '../utils.dart';

bool isOnboardingVisitedForEmail = false;

Future<void> checkIfOnboardingVisitedForEmail(
  SecureStorageHelper secureStorageHelper,
) async {
  final cachedLoggedInEmail = await secureStorageHelper.getSecuredString(
    CacheKeys.loggedInUserEmail,
  );
  if (cachedLoggedInEmail == null) {
    isOnboardingVisitedForEmail = false;
    return;
  }
  final isOnboardingDoneForEmail = await secureStorageHelper.isOnboardingDone(
    cachedLoggedInEmail,
  );
  isOnboardingVisitedForEmail = isOnboardingDoneForEmail != null;
}
