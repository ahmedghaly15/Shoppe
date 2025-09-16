part of 'app_router.dart';

List<AutoRoute> get appRoutes => [
  AutoRoute(page: StartRoute.page, initial: true),
  _buildCustomRoute(page: RegisterRoute.page),
  _buildCustomRoute(page: LoginRoute.page),
  _buildCustomRoute(page: OtpRoute.page),
];

CustomRoute _buildCustomRoute({
  bool initial = false,
  required PageInfo page,
  List<AutoRoute>? children,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
  transitionsBuilder,
  Duration duration = const Duration(milliseconds: 500),
}) => CustomRoute(
  initial: initial,
  page: page,
  transitionsBuilder: transitionsBuilder ?? TransitionsBuilders.slideRight,
  duration: duration,
  children: children,
);
