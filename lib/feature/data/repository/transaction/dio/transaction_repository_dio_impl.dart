import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class TransactionRepositoryDioImpl implements TransactionRepository {
  TransactionRepositoryDioImpl({required DioDataSource dioDataSource})
    : _dioDataSource = dioDataSource;

  final DioDataSource _dioDataSource;

  void toDelete() {
    var _ = _dioDataSource;
  }

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
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Future<Result<void>> deleteTransaction(String transactionId) async {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Stream<Result<List<TransactionEntity>>> watchAllTransactions({
    int? limit,
    int? offset,
  }) async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Stream<Result<TransactionEntity>> watchTransactionById(
    String transactionId,
  ) async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Stream<Result<List<TransactionEntity>>> watchCardTransactions(
    String cardId, {
    int? limit,
    int? offset,
  }) async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Stream<Result<List<TransactionEntity>>> searchTransactions(
    String accountId, {
    required String? query,
    required DateTime startDate,
    required DateTime endDate,
  }) async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }
}
