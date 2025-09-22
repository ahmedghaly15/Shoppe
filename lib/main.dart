import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:shared_preferences/shared_preferences.dart';

import 'riverpod_observer.dart';
import 'src/config/cache/cache_helper.dart';
import 'src/core/widgets/flutter_error_details_view.dart';
import 'src/shoppe_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  final sharedPref = await SharedPreferences.getInstance();
  final cacheHelper = CacheHelper(sharedPref);

  ErrorWidget.builder = (FlutterErrorDetails details) =>
      FlutterErrorDetailsView(details: details);

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
