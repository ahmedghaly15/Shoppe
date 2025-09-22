import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

import '../../core/utils/functions/check_if_onboarding_visited_for_email.dart'
    show isOnboardingVisitedForEmail;
import '../../core/utils/functions/check_if_user_is_logged_in.dart'
    show isUserLoggedIn;
import '../../core/widgets/shad_dialog_view.dart';
import '../../features/forgot_password/presentation/views/forgot_password_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/login/presentation/views/login_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/otp/presentation/views/otp_view.dart';
import '../../features/register/presentation/views/register_view.dart';
import '../../features/reset_pass/data/models/reset_pass_view_params.dart';
import '../../features/reset_pass/presentation/views/reset_pass_view.dart';
import '../../features/start/presentation/views/start_view.dart';

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
