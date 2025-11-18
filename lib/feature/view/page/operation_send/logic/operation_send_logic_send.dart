import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'operation_send_logic_send.g.dart';

@Riverpod(
  dependencies: [
    createTransactionUseCase,
    operationSendSelectedCard,
    operationSendAmountController,
  ],
)
Future<void> operationSendController(Ref ref) async {
  final selectedCard = ref.read(operationSendSelectedCardProvider);
  final account = selectedCard.value.account!;

  final amountController = ref.read(operationSendAmountControllerProvider);

  final createTransactionUseCase = ref.read(createTransactionUseCaseProvider);
  final result = await createTransactionUseCase(
    accountId: account.id,
    amount: double.tryParse(amountController.text) ?? 0.0,
    type: TransactionType.transfer,
    description: 'Transfer sent',
    categoryId: '',
  );
  return result.when(
    ok: (_) => null,
    error: (error) {
      Zone.current.handleUncaughtError(error, StackTrace.empty);
      throw error;
    },
  );
}
