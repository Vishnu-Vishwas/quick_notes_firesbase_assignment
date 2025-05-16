import 'package:auto_route/auto_route.dart';
import 'package:quick_notes/core/navigation/app_router.dart';
import 'package:quick_notes/core/navigation/navigation_constants.dart';

@RoutePage(name: NavigationConstants.landingRouter)
class LandingScreenRouter extends AutoRouter {
  const LandingScreenRouter({super.key});
}

final AutoRoute landingRouter = AutoRoute(
  initial: true,
  // path: NavigationConstants.initialPath,
  page: LandingRouter.page,
  // children: [],
);
