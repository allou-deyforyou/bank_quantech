import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

abstract interface class TransactionRepository {
  const TransactionRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  /// Récupère toutes les transactions d'un compte
  Future<Result<List<TransactionEntity>>> getAccountTransactions(
    String accountId, {
    int? limit,
    int? offset,
  });

  /// Récupère une transaction par son ID
  Future<Result<TransactionEntity>> getTransactionById(String transactionId);

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

  /// Met à jour une transaction existante
  Future<Result<TransactionEntity>> updateTransaction(
    TransactionEntity transaction,
  );

  /// Supprime une transaction
  Future<Result<void>> deleteTransaction(String transactionId);

  /// Met à jour le statut d'une transaction
  Future<Result<void>> updateTransactionStatus(
    String transactionId,
    TransactionStatus status,
  );

  /// Récupère les transactions par statut
  Future<Result<List<TransactionEntity>>> getTransactionsByStatus(
    String accountId,
    TransactionStatus status,
  );

  /// Récupère les transactions par type
  Future<Result<List<TransactionEntity>>> getTransactionsByType(
    String accountId,
    TransactionType type,
  );

  /// Récupère les transactions par période
  Future<Result<List<TransactionEntity>>> getTransactionsByDateRange(
    String accountId,
    DateTime startDate,
    DateTime endDate,
  );

  /// Récupère les transactions par catégorie
  Future<Result<List<TransactionEntity>>> getTransactionsByCategory(
    String accountId,
    String categoryId,
  );

  /// Recherche des transactions par description ou merchant
  Future<Result<List<TransactionEntity>>> searchTransactions(
    String accountId,
    String query,
  );

  /// Récupère les transactions d'une carte spécifique
  Future<Result<List<TransactionEntity>>> getCardTransactions(
    String cardId, {
    int? limit,
    int? offset,
  });

  /// Calcule le solde total d'un compte à une date donnée
  Future<Result<double>> calculateAccountBalance(
    String accountId, {
    DateTime? asOfDate,
  });

  /// Récupère les statistiques de transactions d'un compte
  Future<Result<Map<String, dynamic>>> getTransactionStats(
    String accountId, {
    DateTime? startDate,
    DateTime? endDate,
  });

  /// Récupère les transactions récurrentes
  Future<Result<List<TransactionEntity>>> getRecurringTransactions(
    String accountId,
  );

  /// Annule une transaction
  Future<Result<void>> cancelTransaction(String transactionId);

  /// Récupère les transactions en attente
  Future<Result<List<TransactionEntity>>> getPendingTransactions(
    String accountId,
  );

  /// Valide une transaction avant création
  Future<Result<bool>> validateTransaction({
    required String accountId,
    required double amount,
    required TransactionType type,
  });

  /// Récupère le nombre total de transactions d'un compte
  Future<Result<int>> getTransactionCount(String accountId);
}
