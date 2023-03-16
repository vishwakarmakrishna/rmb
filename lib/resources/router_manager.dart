import 'package:flutter/material.dart';
import 'package:rmb/presentation/edit/edit_member.dart';
import 'package:rmb/presentation/home/home.dart';
import 'package:rmb/presentation/splash/splash.dart';
import 'package:rmb/presentation/user/user_view.dart';
import 'package:rmb/resources/resources.dart';

export 'package:go_router/go_router.dart';

class RouterStrings {
  // routes
  static const String initialRoute = "/";
  static const String splash = "splash";
  static const String home = "home";
  static const String edit = "edit";
  static const String user = "user";

  // paths
  static final String splashPath = splash.path;
  static final String homePath = home.path;
  static final String editPath = edit.path;
  static final String userPath = user.path;
}

extension on String {
  String get path => "/$this";
}

class RouteManager {
  /// The route configuration.
  static GoRouter getrouter({String? initialRoute}) => GoRouter(
        initialLocation: initialRoute,
        routes: <RouteBase>[
          GoRoute(
            path: RouterStrings.initialRoute,
            pageBuilder: (context, state) =>
                buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: const SplashView(),
            ),
            routes: <RouteBase>[
              GoRoute(
                path: RouterStrings.home,
                name: RouterStrings.homePath,
                builder: (context, state) => const HomeView(),
              ),
              GoRoute(
                path: RouterStrings.splash,
                name: RouterStrings.splashPath,
                builder: (context, state) => const SplashView(),
              ),
              GoRoute(
                path: RouterStrings.edit,
                name: RouterStrings.editPath,
                builder: (context, state) => const EditMember(),
              ),
              GoRoute(
                path: RouterStrings.user,
                name: RouterStrings.userPath,
                builder: (context, state) => const UserView(),
              ),
            ],
          ),
        ],
      );

  static Widget Function(BuildContext, Widget?)? builder = (context, child) {
    final mediaQueryData = MediaQuery.of(context);
    final scale =
        mediaQueryData.textScaleFactor.clamp(AppSize.s0_8, AppSize.s0_9);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
      child: child ?? const SizedBox.shrink(),
    );
  };
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
