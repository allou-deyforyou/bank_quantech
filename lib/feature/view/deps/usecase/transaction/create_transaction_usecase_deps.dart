import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'create_transaction_usecase_deps.g.dart';

@Riverpod(
  dependencies: [
    accountRepository,
    categoryRepository,
    transactionRepository,
    transactionLocalRepository,
  ],
)
CreateTransactionUseCase createTransactionUseCase(Ref ref) {
  return CreateTransactionUseCase(
    accountRepository: ref.read(accountRepositoryProvider),
    categoryRepository: ref.read(categoryRepositoryProvider),
    transactionRepository: ref.read(transactionRepositoryProvider),
    transactionLocalRepository: ref.read(transactionLocalRepositoryProvider),
  );
}
