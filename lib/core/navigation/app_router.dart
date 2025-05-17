import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/features/auth/presentation/screens/login_screen.dart';
import 'package:quick_notes/features/auth/presentation/screens/signup_screen.dart';
import 'package:quick_notes/features/landing_screen/presentation/screens/landing_screen.dart';
import 'package:quick_notes/core/navigation/routes/landing_screen_route.dart';
import 'package:quick_notes/features/notes/presentation/screens/add_note_screen.dart';
import 'package:quick_notes/features/notes/presentation/screens/home_screen.dart';
import 'package:quick_notes/features/notes/presentation/screens/note_details_screen.dart';
import 'package:quick_notes/features/notes/domain/entities/notes_entity.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LandingRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignupRoute.page),
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: AddNoteRoute.page),
    AutoRoute(page: NoteDetailsRoute.page),
  ];
}
