// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CartView]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CartView();
    },
  );
}

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
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
    },
  );
}

/// generated route for
/// [LayoutView]
class LayoutRoute extends PageRouteInfo<void> {
  const LayoutRoute({List<PageRouteInfo>? children})
    : super(LayoutRoute.name, initialChildren: children);

  static const String name = 'LayoutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LayoutView();
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
/// [OrdersView]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
    : super(OrdersRoute.name, initialChildren: children);

  static const String name = 'OrdersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrdersView();
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
/// [ProductDetailsView]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    Key? key,
    required Product product,
    List<PageRouteInfo>? children,
  }) : super(
         ProductDetailsRoute.name,
         args: ProductDetailsRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return ProductDetailsView(key: args.key, product: args.product);
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({this.key, required this.product});

  final Key? key;

  final Product product;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductDetailsRouteArgs) return false;
    return key == other.key && product == other.product;
  }

  @override
  int get hashCode => key.hashCode ^ product.hashCode;
}

/// generated route for
/// [ProfileConsumerView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileConsumerView();
    },
  );
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
/// [ReviewsView]
class ReviewsRoute extends PageRouteInfo<ReviewsRouteArgs> {
  ReviewsRoute({
    Key? key,
    required String productId,
    List<PageRouteInfo>? children,
  }) : super(
         ReviewsRoute.name,
         args: ReviewsRouteArgs(key: key, productId: productId),
         initialChildren: children,
       );

  static const String name = 'ReviewsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReviewsRouteArgs>();
      return ReviewsView(key: args.key, productId: args.productId);
    },
  );
}

class ReviewsRouteArgs {
  const ReviewsRouteArgs({this.key, required this.productId});

  final Key? key;

  final String productId;

  @override
  String toString() {
    return 'ReviewsRouteArgs{key: $key, productId: $productId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReviewsRouteArgs) return false;
    return key == other.key && productId == other.productId;
  }

  @override
  int get hashCode => key.hashCode ^ productId.hashCode;
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
