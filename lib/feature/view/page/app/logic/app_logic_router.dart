import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'app_logic_router.g.dart';

@Riverpod()
Future<GoRouter> appRouter(Ref ref) async {
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);
  final navigationKey = GlobalKey<NavigatorState>(debugLabel: 'navigator');
  final routeObserver = RouteObserver<PageRoute<void>>();
  final router = GoRouter(
    navigatorKey: navigationKey,
    observers: [routeObserver],
    debugLogDiagnostics: true,
    routes: $appRoutes,
  );
  ref.onDispose(router.dispose);
  return router;
}
