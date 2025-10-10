import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:flutter_riverpod/misc.dart' show ProviderException;
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'riverpod_observer.dart';
import 'src/config/cache/cache.dart';
import 'src/core/utils/utils.dart';
import 'src/core/widgets/core_widgets.dart' show FlutterErrorDetailsView;
import 'src/shoppe_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPref = await SharedPreferences.getInstance();
  final sharedPrefHelper = SharedPrefHelper(sharedPref);

  const secureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );
  final secureStorageHelper = SecureStorageHelper(secureStorage);

  ErrorWidget.builder = (FlutterErrorDetails details) =>
      FlutterErrorDetailsView(details: details);

  await Future.wait([
    ScreenUtil.ensureScreenSize(),
    checkIfOnboardingVisitedForEmail(secureStorageHelper),
    checkIfUserIsLoggedIn(secureStorageHelper),
  ]);

  runApp(
    ProviderScope(
      overrides: [
        sharedPrefProvider.overrideWithValue(sharedPref),
        sharedPrefHelperProvider.overrideWithValue(sharedPrefHelper),
        secureStorageProvider.overrideWithValue(secureStorage),
        secureStorageHelperProvider.overrideWithValue(secureStorageHelper),
      ],
      retry: (retryCount, error) {
        if (error is ProviderException) return null;
        if (retryCount > 5) return null;

        return Duration(seconds: retryCount * 2);
      },
      observers: [RiverpodObserver()],
      child: const ShoppeApp(),
    ),
  );
}
