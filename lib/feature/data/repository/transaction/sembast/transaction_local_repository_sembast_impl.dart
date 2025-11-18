import 'package:sembast/sembast.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class TransactionLocalRepositorySembastImpl
    implements TransactionLocalRepository {
  TransactionLocalRepositorySembastImpl({
    required SembastDataSource sembastDataSource,
  }) : _sembastDataSource = sembastDataSource;

  final SembastDataSource _sembastDataSource;

  @override
  String toString() {
    return '$runtimeType()';
  }

  @override
  Future<Result<void>> saveTransactions(
    List<TransactionEntity> transactions,
  ) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      await db.transaction((tn) async {
        final data = TransactionSembastModel.fromTransactionEntities(
          transactions,
        )!;
        final values = TransactionSembastModel.toListMap(data)!;
        return await TransactionSembastModel.box.addAll(tn, values);
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(TransactionUnknownException());
    }
  }

  @override
  Future<Result<void>> updateTransaction(TransactionEntity transaction) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(filter: Filter.byKey(transaction.id));
      await db.transaction((tn) async {
        final data = TransactionSembastModel.fromTransactionEntity(
          transaction,
        )!;
        await TransactionSembastModel.box.update(
          db,
          data.toMap(),
          finder: finder,
        );
        return data;
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(TransactionUnknownException());
    }
  }

  @override
  Future<Result<void>> deleteTransaction(String transactionId) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      await db.transaction((tn) async {
        final finder = Finder(filter: Filter.byKey(transactionId));
        return TransactionSembastModel.box.delete(tn, finder: finder);
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(TransactionUnknownException());
    }
  }

  @override
  Stream<Result<List<TransactionEntity>>> watchAllTransactions({
    int? limit,
    int? offset,
  }) async* {
    Result<List<TransactionEntity>> onData(
      List<TransactionEntity> transactions,
    ) {
      return Result.ok(transactions);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        sortOrders: [SortOrder(TransactionSembastModel.createdAtKey, false)],
      );
      final build = TransactionSembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final transactions = List<TransactionEntity>.from(
          snapshot.values.map((data) {
            final transaction = TransactionSembastModel.fromMap(data)!;
            return transaction;
          }),
        );
        return transactions;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(TransactionUnknownException());
    }
  }

  @override
  Stream<Result<TransactionEntity>> watchTransactionById(
    String transactionId,
  ) async* {
    Result<TransactionEntity> onData(List<TransactionEntity> transactions) {
      final transaction = transactions.where((existingTransaction) {
        return existingTransaction.id == transactionId;
      }).firstOrNull;
      if (transaction == null) {
        return Result.error(TransactionNotFoundException(transactionId));
      }
      return Result.ok(transaction);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        filter: Filter.equals(TransactionSembastModel.idKey, transactionId),
      );
      final build = TransactionSembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final transactions = List<TransactionEntity>.from(
          snapshot.values.map((data) {
            final transaction = TransactionSembastModel.fromMap(data)!;
            return transaction;
          }),
        );
        return transactions;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(TransactionUnknownException());
    }
  }

  @override
  Stream<Result<List<TransactionEntity>>> searchTransactions() async* {
    Result<List<TransactionEntity>> onData(
      List<TransactionEntity> transactions,
    ) {
      return Result.ok(transactions);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        sortOrders: [SortOrder(TransactionSembastModel.createdAtKey, false)],
      );
      final build = TransactionSembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final transactions = List<TransactionEntity>.from(
          snapshot.values.map((data) {
            final transaction = TransactionSembastModel.fromMap(data)!;
            return transaction;
          }),
        );
        return transactions;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(TransactionUnknownException());
    }
  }
}
