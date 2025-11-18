import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

part 'transaction_local_repository.dart';

abstract interface class TransactionRepository {
  const TransactionRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  /// Crée une nouvelle transaction
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
  });

  /// Supprime une transaction
  Future<Result<void>> deleteTransaction(String transactionId);

  /// Met à jour le statut d'une transaction
  Future<Result<void>> updateTransactionStatus(
    String transactionId, {
    required TransactionStatus status,
  });

  /// Récupère toutes les transactions d'un compte
  Stream<Result<List<TransactionEntity>>> watchAllTransactions({
    int? limit,
    int? offset,
  });

  /// Récupère une transaction par son ID
  Stream<Result<TransactionEntity>> watchTransactionById(String transactionId);

  /// Recherche des transactions par description ou merchant
  Stream<Result<List<TransactionEntity>>> searchTransactions(
    String accountId, {
    required String? query,
    required DateTime startDate,
    required DateTime endDate,
  });

  /// Récupère les transactions d'une carte spécifique
  Stream<Result<List<TransactionEntity>>> watchCardTransactions(
    String cardId, {
    int? limit,
    int? offset,
  });
}
