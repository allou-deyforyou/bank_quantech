import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class TransactionRepositoryMockImpl implements TransactionRepository {
  TransactionRepositoryMockImpl({required MockDataSource mockDataSource})
    : _mockDataSource = mockDataSource;

  final MockDataSource _mockDataSource;

  @override
  String toString() {
    return '$runtimeType()';
  }

  @override
  Future<Result<TransactionEntity>> createTransaction({
    required String accountId,
    String? cardId,
    required double amount,
    required TransactionType type,
    required String categoryId,
    required String description,
    String? merchantName,
    required DateTime transactionDate,
    String? reference,
  }) {
    // TODO: implement createTransaction
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> updateTransactionStatus(
    String transactionId, {
    required TransactionStatus status,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      final transactions = await _mockDataSource.getTransactionData();
      final index = transactions.indexWhere(
        (existingTransaction) => existingTransaction.id == transactionId,
      );
      if (index == -1) {
        return Result.error(TransactionNotFoundException(transactionId));
      }
      final now = DateTime.now();

      TransactionEntity transaction = transactions[index];
      transaction = transaction.copyWith(status: status, updatedAt: now);

      transactions[index] = transaction;
      _mockDataSource.transactionDataController.add(transactions);
      return Result.ok(null);
    } catch (e) {
      return Result.error(TransactionUnknownException());
    }
  }

  @override
  Future<Result<void>> deleteTransaction(String transactionId) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      final transactions = await _mockDataSource.getTransactionData();
      final index = transactions.indexWhere(
        (existingTransaction) => existingTransaction.id == transactionId,
      );
      if (index == -1) {
        return Result.error(TransactionNotFoundException(transactionId));
      }
      transactions.removeAt(index);
      _mockDataSource.transactionDataController.add(transactions);
      return Result.ok(null);
    } catch (e) {
      return Result.error(TransactionUnknownException());
    }
  }

  @override
  Stream<Result<List<TransactionEntity>>> watchAllTransactions( {
    int? limit,
    int? offset,
  }) async* {
    Result<List<TransactionEntity>> onData(
      List<TransactionEntity> transactions,
    ) {
      final filteredTransactions = List.of(
        transactions.where((transaction) {
          return true;
        }),
      );
      return Result.ok(filteredTransactions);
    }

    try {
      await Future.delayed(const Duration(seconds: 1));

      final transactionData = await _mockDataSource.getTransactionData();
      yield onData(transactionData);

      final stream = _mockDataSource.transactionDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(TransactionUnknownException());
    }
  }

  @override
  Stream<Result<TransactionEntity>> watchTransactionById(
    String transactionId,
  ) async* {
    Result<TransactionEntity> onData(List<TransactionEntity> transactions) {
      final transaction = transactions.where((transaction) {
        return transaction.id == transactionId;
      }).firstOrNull;

      if (transaction == null) {
        return Result.error(TransactionNotFoundException(transactionId));
      }
      return Result.ok(transaction);
    }

    try {
      await Future.delayed(const Duration(seconds: 1));

      final transactionData = await _mockDataSource.getTransactionData();
      yield onData(transactionData);

      final stream = _mockDataSource.transactionDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(TransactionUnknownException());
    }
  }

  @override
  Stream<Result<List<TransactionEntity>>> watchCardTransactions(
    String cardId, {
    int? limit,
    int? offset,
  }) async* {
    Result<List<TransactionEntity>> onData(
      List<TransactionEntity> transactions,
    ) {
      final filteredTransactions = List.of(
        transactions.where((transaction) {
          return transaction.card?.id == cardId;
        }),
      );
      return Result.ok(filteredTransactions);
    }

    try {
      await Future.delayed(const Duration(seconds: 1));

      final transactionData = await _mockDataSource.getTransactionData();
      yield onData(transactionData);

      final stream = _mockDataSource.transactionDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(TransactionUnknownException());
    }
  }

  @override
  Stream<Result<List<TransactionEntity>>> searchTransactions(
    String accountId, {
    required String? query,
    required DateTime startDate,
    required DateTime endDate,
  }) async* {
    Result<List<TransactionEntity>> onData(
      List<TransactionEntity> transactions,
    ) {
      final filteredTransactions = List.of(
        transactions.where((transaction) {
          return transaction.account?.id == accountId;
        }),
      );
      return Result.ok(filteredTransactions);
    }

    try {
      await Future.delayed(const Duration(seconds: 1));

      final transactionData = await _mockDataSource.getTransactionData();
      yield onData(transactionData);

      final stream = _mockDataSource.transactionDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(TransactionUnknownException());
    }
  }
}
