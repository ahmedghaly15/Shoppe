import '../../../config/cache/cache_helper.dart';
import '../../../config/cache/cache_keys.dart';

bool isOnboardingVisitedForEmail = false;

Future<void> checkIfOnboardingVisitedForEmail(CacheHelper cacheHelper) async {
  final cachedLoggedInEmail = await cacheHelper.getString(
    CacheKeys.loggedInUserEmail,
  );
  if (cachedLoggedInEmail == null) {
    isOnboardingVisitedForEmail = false;
    return;
  }
  final isOnboardingDoneForEmail = await cacheHelper.isOnboardingDone(
    cachedLoggedInEmail,
  );
  isOnboardingVisitedForEmail = isOnboardingDoneForEmail;
}
