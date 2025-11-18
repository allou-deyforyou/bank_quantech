import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bank_quantech/feature/feature.dart';

final class TransactionsDetailsPageRoute extends GoRouteData
    with $TransactionsDetailsPageRoute {
  const TransactionsDetailsPageRoute();

  static final $parentNavigatorKey = $appNavigatorKey;

  static const String name = 'transactions_details_page';
  static const String path = 'transactions/details';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      name: state.name,
      key: state.pageKey,
      child: ProviderScope(
        retry: (retryCount, error) => null,
        child: const TransactionsDetailsPage(),
      ),
    );
  }
}
