import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bank_quantech/feature/feature.dart';

final class OperationSendPageRoute extends GoRouteData
    with $OperationSendPageRoute {
  const OperationSendPageRoute(this.$extra);

  final Map<String, dynamic> $extra;

  static const String cardKey = 'card';

  static final $parentNavigatorKey = $appNavigatorKey;

  static const String name = 'operation_send_page';
  static const String path = 'operation_send';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CupertinoPage(
      name: state.name,
      key: state.pageKey,
      child: ProviderScope(
        overrides: [
          operationSendSelectedCardProvider.overrideWith((ref) {
            final card = $extra[cardKey] as CreditCardEntity;
            return ref.disposeAndListenChangeNotifier(ValueNotifier(card));
          }),
        ],
        retry: (retryCount, error) => null,
        child: const LoaderScope(child: OperationSendPage()),
      ),
    );
  }
}
