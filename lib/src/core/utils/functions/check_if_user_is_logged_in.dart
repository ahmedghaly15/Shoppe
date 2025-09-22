import '../../../config/cache/extensions.dart';
import '../../../config/cache/cache_helper.dart';

bool isUserLoggedIn = false;

Future<void> checkIfUserIsLoggedIn(CacheHelper cacheHelper) async {
  final cachedLoginResponse = await cacheHelper.getCachedLoginResponse();
  isUserLoggedIn = cachedLoginResponse != null;
}
