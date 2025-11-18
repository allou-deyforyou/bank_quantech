import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

/// Modèle pour les statistiques de transactions
class TransactionStats {
  const TransactionStats({
    required this.totalIncome,
    required this.totalExpenses,
    required this.netIncome,
    required this.transactionCount,
    required this.averageTransactionAmount,
    required this.categoryBreakdown,
  });

  final double totalIncome;
  final double totalExpenses;
  final double netIncome;
  final int transactionCount;
  final double averageTransactionAmount;
  final Map<String, double> categoryBreakdown;
}

/// Use case pour calculer les statistiques de transactions
class CalculateTransactionStatsUseCase {
  const CalculateTransactionStatsUseCase({
    required TransactionRepository transactionRepository,
    required TransactionCategoryRepository categoryRepository,
  }) : _transactionRepository = transactionRepository,
       _categoryRepository = categoryRepository;

  final TransactionRepository _transactionRepository;
  final TransactionCategoryRepository _categoryRepository;

  /// Calcule les statistiques de transactions pour une période donnée
  Future<Result<TransactionStats>> call({
    required String accountId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      // Définir les dates par défaut (dernier mois)
      final end = endDate ?? DateTime.now();
      final start = startDate ?? DateTime(end.year, end.month - 1, end.day);

      // Simuler la récupération des transactions (dans une vraie implémentation)
      // On aurait une méthode pour filtrer par période
      final transactionsResult = await _transactionRepository
          .watchAllTransactions()
          .first;
      if (!transactionsResult.hasData) {
        return Result.error(transactionsResult.asError.error);
      }

      final allTransactions = transactionsResult.asOk.value;

      // Filtrer les transactions par période
      final filteredTransactions = allTransactions.where((tx) {
        return tx.transactionDate.isAfter(start) &&
            tx.transactionDate.isBefore(end);
      }).toList();

      // Calculer les statistiques
      double totalIncome = 0;
      double totalExpenses = 0;
      Map<String, double> categoryBreakdown = {};

      for (final transaction in filteredTransactions) {
        if (transaction.type == TransactionType.credit) {
          totalIncome += transaction.amount;
        } else if (transaction.type == TransactionType.debit) {
          totalExpenses += transaction.amount;
        }

        // Ajouter au breakdown par catégorie
        final categoryId = transaction.category!.id;
        categoryBreakdown[categoryId] =
            (categoryBreakdown[categoryId] ?? 0) + transaction.amount;
      }

      final netIncome = totalIncome - totalExpenses;
      final transactionCount = filteredTransactions.length;
      final averageAmount = transactionCount > 0
          ? (totalIncome + totalExpenses) / transactionCount
          : 0.0;

      final stats = TransactionStats(
        totalIncome: totalIncome,
        totalExpenses: totalExpenses,
        netIncome: netIncome,
        transactionCount: transactionCount,
        averageTransactionAmount: averageAmount,
        categoryBreakdown: categoryBreakdown,
      );

      return Result.ok(stats);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
