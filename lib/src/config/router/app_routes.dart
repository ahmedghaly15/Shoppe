part of 'app_router.dart';

List<AutoRoute> get appRoutes => [
  AutoRoute(
    page: StartRoute.page,
    initial: (!isUserLoggedIn && !isOnboardingVisitedForEmail),
  ),
  _buildCustomRoute(page: RegisterRoute.page),
  _buildCustomRoute(page: LoginRoute.page),
  _buildCustomRoute(page: OtpRoute.page),
  _buildCustomRoute(
    page: ResetPassProcessRoute.page,
    children: [
      _buildCustomRoute(page: ForgotPasswordRoute.page, initial: true),
      _buildCustomRoute(page: ResetPassRoute.page),
    ],
  ),
  _buildCustomRoute(
    page: OnboardingRoute.page,
    initial: isUserLoggedIn && !isOnboardingVisitedForEmail,
  ),
  _buildCustomRoute(
    page: LayoutRoute.page,
    initial: isUserLoggedIn && isOnboardingVisitedForEmail,
    children: [
      _buildCustomRoute(page: HomeRoute.page, initial: true),
      _buildCustomRoute(page: CartRoute.page),
      _buildCustomRoute(page: ProfileRoute.page),
    ],
  ),
  _buildCustomRoute(page: ProductDetailsRoute.page),
  _buildCustomRoute(page: ReviewsRoute.page),
  _buildCustomRoute(page: OrdersRoute.page),
];

CustomRoute _buildCustomRoute({
  bool initial = false,
  required PageInfo page,
  List<AutoRoute>? children,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
  transitionsBuilder,
  Duration duration = const Duration(milliseconds: 500),
  bool fullscreenDialog = false,
}) => CustomRoute(
  initial: initial,
  page: page,
  transitionsBuilder: transitionsBuilder ?? TransitionsBuilders.slideRight,
  duration: duration,
  children: children,
  fullscreenDialog: fullscreenDialog,
);
