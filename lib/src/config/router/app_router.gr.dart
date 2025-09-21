// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ForgotPasswordView]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
    : super(ForgotPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgotPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForgotPasswordView();
    },
  );
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginView();
    },
  );
}

/// generated route for
/// [OnboardingView]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingView();
    },
  );
}

/// generated route for
/// [OtpView]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({Key? key, required String email, List<PageRouteInfo>? children})
    : super(
        OtpRoute.name,
        args: OtpRouteArgs(key: key, email: email),
        initialChildren: children,
      );

  static const String name = 'OtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>();
      return OtpView(key: args.key, email: args.email);
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key, required this.email});

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, email: $email}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtpRouteArgs) return false;
    return key == other.key && email == other.email;
  }

  @override
  int get hashCode => key.hashCode ^ email.hashCode;
}

/// generated route for
/// [RegisterView]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
    : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterView();
    },
  );
}

/// generated route for
/// [ResetPassProcessView]
class ResetPassProcessRoute extends PageRouteInfo<void> {
  const ResetPassProcessRoute({List<PageRouteInfo>? children})
    : super(ResetPassProcessRoute.name, initialChildren: children);

  static const String name = 'ResetPassProcessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ResetPassProcessView();
    },
  );
}

/// generated route for
/// [ResetPassView]
class ResetPassRoute extends PageRouteInfo<ResetPassRouteArgs> {
  ResetPassRoute({
    Key? key,
    required ResetPassViewParams params,
    List<PageRouteInfo>? children,
  }) : super(
         ResetPassRoute.name,
         args: ResetPassRouteArgs(key: key, params: params),
         initialChildren: children,
       );

  static const String name = 'ResetPassRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPassRouteArgs>();
      return ResetPassView(key: args.key, params: args.params);
    },
  );
}

class ResetPassRouteArgs {
  const ResetPassRouteArgs({this.key, required this.params});

  final Key? key;

  final ResetPassViewParams params;

  @override
  String toString() {
    return 'ResetPassRouteArgs{key: $key, params: $params}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ResetPassRouteArgs) return false;
    return key == other.key && params == other.params;
  }

  @override
  int get hashCode => key.hashCode ^ params.hashCode;
}

/// generated route for
/// [ShadDialogView]
class ShadDialogRoute extends PageRouteInfo<ShadDialogRouteArgs> {
  ShadDialogRoute({
    Key? key,
    required Widget child,
    List<Widget> actions = const [],
    Widget? title,
    Widget? description,
    String? titleText,
    String? descriptionText,
    List<PageRouteInfo>? children,
  }) : super(
         ShadDialogRoute.name,
         args: ShadDialogRouteArgs(
           key: key,
           child: child,
           actions: actions,
           title: title,
           description: description,
           titleText: titleText,
           descriptionText: descriptionText,
         ),
         initialChildren: children,
       );

  static const String name = 'ShadDialogRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ShadDialogRouteArgs>();
      return ShadDialogView(
        key: args.key,
        child: args.child,
        actions: args.actions,
        title: args.title,
        description: args.description,
        titleText: args.titleText,
        descriptionText: args.descriptionText,
      );
    },
  );
}

class ShadDialogRouteArgs {
  const ShadDialogRouteArgs({
    this.key,
    required this.child,
    this.actions = const [],
    this.title,
    this.description,
    this.titleText,
    this.descriptionText,
  });

  final Key? key;

  final Widget child;

  final List<Widget> actions;

  final Widget? title;

  final Widget? description;

  final String? titleText;

  final String? descriptionText;

  @override
  String toString() {
    return 'ShadDialogRouteArgs{key: $key, child: $child, actions: $actions, title: $title, description: $description, titleText: $titleText, descriptionText: $descriptionText}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ShadDialogRouteArgs) return false;
    return key == other.key &&
        child == other.child &&
        const ListEquality().equals(actions, other.actions) &&
        title == other.title &&
        description == other.description &&
        titleText == other.titleText &&
        descriptionText == other.descriptionText;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      child.hashCode ^
      const ListEquality().hash(actions) ^
      title.hashCode ^
      description.hashCode ^
      titleText.hashCode ^
      descriptionText.hashCode;
}

/// generated route for
/// [StartView]
class StartRoute extends PageRouteInfo<void> {
  const StartRoute({List<PageRouteInfo>? children})
    : super(StartRoute.name, initialChildren: children);

  static const String name = 'StartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StartView();
    },
  );
}
