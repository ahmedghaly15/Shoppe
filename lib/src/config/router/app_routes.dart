part of 'app_router.dart';

List<AutoRoute> get appRoutes => [];

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
