import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'operation_receive_logic_send.g.dart';

@Riverpod(
  dependencies: [
    createTransactionUseCase,
    operationReceiveSelectedCard,
    operationReceiveAmountController,
  ],
)
Future<void> operationReceiveController(Ref ref) async {
  final selectedCard = ref.read(operationReceiveSelectedCardProvider);
  final account = selectedCard.value.account!;

  final amountController = ref.read(operationReceiveAmountControllerProvider);

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
