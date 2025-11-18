import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bank_quantech/feature/feature.dart';

final class OperationReceivePageRoute extends GoRouteData
    with $OperationReceivePageRoute {
  const OperationReceivePageRoute(this.$extra);

  final Map<String, dynamic> $extra;

  static const String cardKey = 'card';

  static final $parentNavigatorKey = $appNavigatorKey;

  static const String name = 'operation_receive_page';
  static const String path = 'operation_receive';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      name: state.name,
      key: state.pageKey,
      child: ProviderScope(
        overrides: [
          operationReceiveSelectedCardProvider.overrideWith((ref) {
            final card = $extra[cardKey] as CreditCardEntity;
            return ref.disposeAndListenChangeNotifier(ValueNotifier(card));
          }),
        ],
        retry: (retryCount, error) => null,
        child: const LoaderScope(child: OperationReceivePage()),
      ),
    );
  }
}
