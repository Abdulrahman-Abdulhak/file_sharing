import 'package:auto_route/auto_route.dart';

import '/constants/constants.dart';

import 'router.gr.dart';
export 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Screen|Page,Route")
class AppRouter extends RootStackRouter {
  static final router = AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SignUpRoute.page,
          path: AppRoutes.signUpPath,
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: AppRoutes.signInPath,
        ),
      ];

  // List<PageRouteInfo> get mainTabs => [
  //       const HomeRoute(),
  //     ];
}
