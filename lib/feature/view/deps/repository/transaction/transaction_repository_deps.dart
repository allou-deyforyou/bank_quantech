import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'transaction_repository_deps.g.dart';

/// [Transaction]
final transactionRepositoryMockProvider = transactionRepositoryProvider
    .overrideWith((ref) {
      return TransactionRepositoryMockImpl(
        mockDataSource: ref.read(mockDataSourceProvider),
      );
    });

@Riverpod(dependencies: [dioDataSource])
TransactionRepository transactionRepository(Ref ref) {
  return TransactionRepositoryDioImpl(
    dioDataSource: ref.read(dioDataSourceProvider),
  );
}

@Riverpod(dependencies: [sembastDataSource])
TransactionLocalRepository transactionLocalRepository(Ref ref) {
  return TransactionLocalRepositorySembastImpl(
    sembastDataSource: ref.read(sembastDataSourceProvider),
  );
}
