import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bank_quantech/feature/feature.dart';

final class HomePageRoute extends GoRouteData with $HomePageRoute {
  const HomePageRoute();

  static final $parentNavigatorKey = $appNavigatorKey;

  static const String name = 'home';
  static const String path = '/';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      name: state.name,
      key: state.pageKey,
      child: ProviderScope(
        retry: (retryCount, error) => null,
        child: const HomePage(),
      ),
    );
  }
}
