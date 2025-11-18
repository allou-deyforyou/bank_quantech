import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'get_all_transaction_usecase_deps.g.dart';

@Riverpod(
  dependencies: [
    transactionRepository,
    transactionLocalRepository,
  ],
)
SyncAllTransactionsUseCase syncAllTransactionsUseCase(Ref ref) {
  return SyncAllTransactionsUseCase(
    transactionRepository: ref.read(
      transactionRepositoryProvider,
    ),
    transactionLocalRepository: ref.read(
      transactionLocalRepositoryProvider,
    ),
  );
}

@Riverpod(
  dependencies: [
    transactionRepository,
    transactionLocalRepository,
  ],
)
GetAllTransactionsUseCase getAllTransactionsUseCase(Ref ref) {
  return GetAllTransactionsUseCase(
    transactionLocalRepository: ref.read(
      transactionLocalRepositoryProvider,
    ),
  );
}

@Riverpod(
  dependencies: [
    syncAllTransactionsUseCase,
    getAllTransactionsUseCase,
  ],
)
GetAllTransactionsWithSyncUseCase getAllTransactionsWithSyncUseCase(Ref ref) {
  return GetAllTransactionsWithSyncUseCase(
    getAllTransactionsUseCase: ref.read(
      getAllTransactionsUseCaseProvider,
    ),
    syncAllTransactionsUseCase: ref.read(
      syncAllTransactionsUseCaseProvider,
    ),
  );
}
