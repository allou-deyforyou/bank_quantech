part of 'transaction_repository.dart';

abstract interface class TransactionLocalRepository {
  const TransactionLocalRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  Future<Result<void>> saveTransactions(List<TransactionEntity> transactions);

  Future<Result<void>> updateTransaction(TransactionEntity transaction);

  Future<Result<void>> deleteTransaction(String transactionId);

  Stream<Result<List<TransactionEntity>>> watchAllTransactions({
    int? limit,
    int? offset,
  });

  Stream<Result<TransactionEntity>> watchTransactionById(String transactionId);

  Stream<Result<List<TransactionEntity>>> searchTransactions();
}
