import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

import '../../core/utils/utils.dart';
import '../../core/widgets/core_widgets.dart' show ShadDialogView;
import '../../features/cart/cart.dart' show CartView;
import '../../features/forgot_password/forgot_password.dart'
    show ForgotPasswordView;
import '../../features/home/presentation/views/home_view.dart';
import '../../features/layout/layout.dart' show LayoutView;
import '../../features/login/login.dart' show LoginView;
import '../../features/onboarding/onboarding.dart' show OnboardingView;
import '../../features/otp/otp.dart' show OtpView;
import '../../features/profile/profile.dart' show ProfileView;
import '../../features/register/register.dart' show RegisterView;
import '../../features/reset_pass/reset_pass.dart'
    show ResetPassView, ResetPassViewParams;
import '../../features/start/start.dart' show StartView;
import '../../features/wishlist/wishlist.dart' show WishlistView;

part 'app_router.gr.dart';
part 'app_routes.dart';

final appRouterProvider = Provider<AppRouter>((ref) => AppRouter());

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => appRoutes;
}

@RoutePage()
class ResetPassProcessView extends AutoRouter {
  const ResetPassProcessView({super.key});
}
