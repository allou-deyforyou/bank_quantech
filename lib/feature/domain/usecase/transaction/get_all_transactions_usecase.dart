import 'dart:async';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class SyncAllTransactionsUseCase {
  const SyncAllTransactionsUseCase({
    required TransactionRepository transactionRepository,
    required TransactionLocalRepository transactionLocalRepository,
  }) : _repository = transactionRepository,
       _localRepository = transactionLocalRepository;

  final TransactionRepository _repository;
  final TransactionLocalRepository _localRepository;

  Future<Result<void>> call({int? limit, int? offset}) async {
    final result = await _repository
        .watchAllTransactions(limit: limit, offset: offset)
        .first;
    return await result.fold(
      onOk: (transactions) async {
        await _localRepository.saveTransactions(transactions);
        return Result.ok(null);
      },
      onError: (error) {
        return Result.error(error);
      },
    );
  }
}

final class GetAllTransactionsUseCase {
  const GetAllTransactionsUseCase({
    required TransactionLocalRepository transactionLocalRepository,
  }) : _localRepository = transactionLocalRepository;

  final TransactionLocalRepository _localRepository;

  @override
  String toString() {
    return '$runtimeType()';
  }

  Stream<Result<List<TransactionEntity>>> call({int? limit, int? offset}) {
    final data = _localRepository.watchAllTransactions(
      limit: limit,
      offset: offset,
    );
    return data;
  }
}

final class GetAllTransactionsWithSyncUseCase {
  const GetAllTransactionsWithSyncUseCase({
    required GetAllTransactionsUseCase getAllTransactionsUseCase,
    required SyncAllTransactionsUseCase syncAllTransactionsUseCase,
  }) : _getAllTransactionsUseCase = getAllTransactionsUseCase,
       _syncAllTransactionsUseCase = syncAllTransactionsUseCase;

  final GetAllTransactionsUseCase _getAllTransactionsUseCase;
  final SyncAllTransactionsUseCase _syncAllTransactionsUseCase;

  @override
  String toString() {
    return '$runtimeType()';
  }

  Stream<Result<List<TransactionEntity>>> call({
    int? limit,
    int? offset,
  }) async* {
    unawaited(_syncAllTransactionsUseCase(limit: limit, offset: offset));
    yield* _getAllTransactionsUseCase(limit: limit, offset: offset);
  }
}
