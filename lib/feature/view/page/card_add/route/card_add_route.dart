import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bank_quantech/feature/feature.dart';

final class CardAddPageRoute extends GoRouteData with $CardAddPageRoute {
  const CardAddPageRoute();

  static final $parentNavigatorKey = $appNavigatorKey;

  static const String name = 'card_add';
  static const String path = 'card/add';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      name: state.name,
      key: state.pageKey,
      child: ProviderScope(
        retry: (retryCount, error) => null,
        child: const LoaderScope(child: CardAddPage()),
      ),
    );
  }
}
