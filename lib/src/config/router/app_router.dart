import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

import '../../core/models/product.dart';
import '../../core/utils/utils.dart';
import '../../features/cart/cart.dart' show CartView;
import '../../features/forgot_password/forgot_password.dart'
    show ForgotPasswordView;
import '../../features/home/home.dart' show HomeView;
import '../../features/layout/layout.dart' show LayoutView;
import '../../features/login/login.dart' show LoginView;
import '../../features/onboarding/onboarding.dart' show OnboardingView;
import '../../features/orders/orders.dart' show OrdersView;
import '../../features/otp/otp.dart' show OtpView;
import '../../features/product_details/product_details.dart'
    show ProductDetailsView;
import '../../features/profile/profile.dart' show ProfileConsumerView;
import '../../features/register/register.dart' show RegisterView;
import '../../features/reset_pass/reset_pass.dart'
    show ResetPassView, ResetPassViewParams;
import '../../features/reviews/reviews.dart' show ReviewsView;
import '../../features/start/start.dart' show StartView;

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
