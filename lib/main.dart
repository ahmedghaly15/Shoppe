import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:shared_preferences/shared_preferences.dart';

import 'riverpod_observer.dart';
import 'src/config/cache/cache.dart';
import 'src/core/utils/utils.dart';
import 'src/core/widgets/core_widgets.dart' show FlutterErrorDetailsView;
import 'src/shoppe_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPref = await SharedPreferences.getInstance();
  final cacheHelper = CacheHelper(sharedPref);

  ErrorWidget.builder = (FlutterErrorDetails details) =>
      FlutterErrorDetailsView(details: details);

  await Future.wait([
    ScreenUtil.ensureScreenSize(),
    checkIfOnboardingVisitedForEmail(cacheHelper),
    checkIfUserIsLoggedIn(cacheHelper),
  ]);

  runApp(
    ProviderScope(
      overrides: [
        sharedPrefProvider.overrideWithValue(sharedPref),
        cacheHelperProvider.overrideWithValue(cacheHelper),
      ],
      observers: [RiverpodObserver()],
      child: const ShoppeApp(),
    ),
  );
}
