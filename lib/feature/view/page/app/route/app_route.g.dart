// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$appShellRoute];

RouteBase get $appShellRoute => ShellRouteData.$route(
  navigatorKey: AppShellRoute.$navigatorKey,
  observers: AppShellRoute.$observers,
  factory: $AppShellRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/',
      name: 'home',
      parentNavigatorKey: HomePageRoute.$parentNavigatorKey,
      factory: $HomePageRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'card/add',
          name: 'card_add',
          parentNavigatorKey: CardAddPageRoute.$parentNavigatorKey,
          factory: $CardAddPageRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'card/information',
          name: 'card_information',
          parentNavigatorKey: CardInformationPageRoute.$parentNavigatorKey,
          factory: $CardInformationPageRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'statistics',
          name: 'statistics_page',
          parentNavigatorKey: StatisticsPageRoute.$parentNavigatorKey,
          factory: $StatisticsPageRoute._fromState,
        ),
      ],
    ),
  ],
);

extension $AppShellRouteExtension on AppShellRoute {
  static AppShellRoute _fromState(GoRouterState state) => const AppShellRoute();
}

mixin $HomePageRoute on GoRouteData {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $CardAddPageRoute on GoRouteData {
  static CardAddPageRoute _fromState(GoRouterState state) =>
      const CardAddPageRoute();

  @override
  String get location => GoRouteData.$location('/card/add');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $CardInformationPageRoute on GoRouteData {
  static CardInformationPageRoute _fromState(GoRouterState state) =>
      const CardInformationPageRoute();

  @override
  String get location => GoRouteData.$location('/card/information');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $StatisticsPageRoute on GoRouteData {
  static StatisticsPageRoute _fromState(GoRouterState state) =>
      const StatisticsPageRoute();

  @override
  String get location => GoRouteData.$location('/statistics');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
