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
          routes: [
            GoRouteData.$route(
              path: 'statistics',
              name: 'statistics_page',
              parentNavigatorKey: StatisticsPageRoute.$parentNavigatorKey,
              factory: $StatisticsPageRoute._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'transactions',
          name: 'transactions_page',
          parentNavigatorKey: TransactionsPageRoute.$parentNavigatorKey,
          factory: $TransactionsPageRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'transactions/details',
          name: 'transactions_details_page',
          parentNavigatorKey: TransactionsDetailsPageRoute.$parentNavigatorKey,
          factory: $TransactionsDetailsPageRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'operation_receive',
          name: 'operation_receive_page',
          parentNavigatorKey: OperationReceivePageRoute.$parentNavigatorKey,
          factory: $OperationReceivePageRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'operation_send',
          name: 'operation_send_page',
          parentNavigatorKey: OperationSendPageRoute.$parentNavigatorKey,
          factory: $OperationSendPageRoute._fromState,
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
      CardInformationPageRoute(state.extra as Map<String, dynamic>);

  CardInformationPageRoute get _self => this as CardInformationPageRoute;

  @override
  String get location => GoRouteData.$location('/card/information');

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin $StatisticsPageRoute on GoRouteData {
  static StatisticsPageRoute _fromState(GoRouterState state) =>
      const StatisticsPageRoute();

  @override
  String get location => GoRouteData.$location('/card/information/statistics');

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

mixin $TransactionsPageRoute on GoRouteData {
  static TransactionsPageRoute _fromState(GoRouterState state) =>
      const TransactionsPageRoute();

  @override
  String get location => GoRouteData.$location('/transactions');

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

mixin $TransactionsDetailsPageRoute on GoRouteData {
  static TransactionsDetailsPageRoute _fromState(GoRouterState state) =>
      const TransactionsDetailsPageRoute();

  @override
  String get location => GoRouteData.$location('/transactions/details');

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

mixin $OperationReceivePageRoute on GoRouteData {
  static OperationReceivePageRoute _fromState(GoRouterState state) =>
      OperationReceivePageRoute(state.extra as Map<String, dynamic>);

  OperationReceivePageRoute get _self => this as OperationReceivePageRoute;

  @override
  String get location => GoRouteData.$location('/operation_receive');

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin $OperationSendPageRoute on GoRouteData {
  static OperationSendPageRoute _fromState(GoRouterState state) =>
      OperationSendPageRoute(state.extra as Map<String, dynamic>);

  OperationSendPageRoute get _self => this as OperationSendPageRoute;

  @override
  String get location => GoRouteData.$location('/operation_send');

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}
