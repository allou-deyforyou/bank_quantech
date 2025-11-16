import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'app_route.g.dart';

final $appNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'app_navigator');
final $appRouteObserver = RouteObserver<PageRoute<void>>();

@TypedShellRoute<AppShellRoute>(
  routes: [
    TypedGoRoute<HomePageRoute>(
      path: HomePageRoute.path,
      name: HomePageRoute.name,
      routes: [
        TypedGoRoute<CardAddPageRoute>(
          path: CardAddPageRoute.path,
          name: CardAddPageRoute.name,
        ),
        TypedGoRoute<CardInformationPageRoute>(
          path: CardInformationPageRoute.path,
          name: CardInformationPageRoute.name,
        ),
        TypedGoRoute<StatisticsPageRoute>(
          path: StatisticsPageRoute.path,
          name: StatisticsPageRoute.name,
        ),
      ],
    ),
  ],
)
final class AppShellRoute extends ShellRouteData {
  const AppShellRoute();

  static final $navigatorKey = $appNavigatorKey;

  static List<NavigatorObserver> get $observers {
    return [$appRouteObserver];
  }

  @override
  Page<void> pageBuilder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return NoTransitionPage(
      name: state.name,
      key: state.pageKey,
      arguments: state.extra,
      child: AppRemoveSplash(child: navigator),
    );
  }
}
