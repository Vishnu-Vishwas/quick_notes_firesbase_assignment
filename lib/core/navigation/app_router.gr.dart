// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddNoteScreen]
class AddNoteRoute extends PageRouteInfo<AddNoteRouteArgs> {
  AddNoteRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        AddNoteRoute.name,
        args: AddNoteRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'AddNoteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddNoteRouteArgs>(
        orElse: () => const AddNoteRouteArgs(),
      );
      return AddNoteScreen(key: args.key);
    },
  );
}

class AddNoteRouteArgs {
  const AddNoteRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AddNoteRouteArgs{key: $key}';
  }
}

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
/// [NoteDetailsScreen]
class NoteDetailsRoute extends PageRouteInfo<NoteDetailsRouteArgs> {
  NoteDetailsRoute({
    Key? key,
    required NotesEntity note,
    List<PageRouteInfo>? children,
  }) : super(
         NoteDetailsRoute.name,
         args: NoteDetailsRouteArgs(key: key, note: note),
         initialChildren: children,
       );

  static const String name = 'NoteDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NoteDetailsRouteArgs>();
      return NoteDetailsScreen(key: args.key, note: args.note);
    },
  );
}

class NoteDetailsRouteArgs {
  const NoteDetailsRouteArgs({this.key, required this.note});

  final Key? key;

  final NotesEntity note;

  @override
  String toString() {
    return 'NoteDetailsRouteArgs{key: $key, note: $note}';
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
