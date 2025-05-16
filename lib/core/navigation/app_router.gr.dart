// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LandingScreen]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute({List<PageRouteInfo>? children})
    : super(LandingRoute.name, initialChildren: children);

  static const String name = 'LandingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LandingScreen();
    },
  );
}

/// generated route for
/// [LandingScreenRouter]
class LandingRouter extends PageRouteInfo<void> {
  const LandingRouter({List<PageRouteInfo>? children})
    : super(LandingRouter.name, initialChildren: children);

  static const String name = 'LandingRouter';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LandingScreenRouter();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        LoginRoute.name,
        args: LoginRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return LoginScreen(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignupScreen]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute({List<PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignupScreen();
    },
  );
}
