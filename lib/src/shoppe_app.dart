import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Consumer;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../app_routes_observer.dart';
import 'config/router/app_router.dart';
import 'config/theming/theming.dart' show ThemeManager;
import 'core/utils/utils.dart' show ConstStrings;

class ShoppeApp extends StatelessWidget {
  const ShoppeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, _) => ShadApp.custom(
        theme: ThemeManager.lightMode,
        themeMode: ThemeMode.light,
        appBuilder: (context) => Consumer(
          builder: (context, ref, _) {
            final appRouter = ref.read(appRouterProvider);
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: ConstStrings.appName,
              theme: ThemeManager.materialTheme(context),
              themeMode: ThemeMode.light,
              builder: (_, child) => ShadAppBuilder(child: child),
              routerConfig: appRouter.config(
                navigatorObservers: () => [
                  AppRoutesObserver(),
                  AutoRouteObserver(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
