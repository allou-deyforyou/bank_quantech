import 'package:flutter/widgets.dart';
import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

abstract interface class TransactionCategoryRepository {
  const TransactionCategoryRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  /// Récupère toutes les catégories de transactions
  Future<Result<List<TransactionCategoryEntity>>> getAllCategories();

  /// Récupère une catégorie par son ID
  Future<Result<TransactionCategoryEntity>> getCategoryById(String categoryId);

  /// Crée une nouvelle catégorie de transaction
  Future<Result<TransactionCategoryEntity>> createCategory({
    required String name,
    required String description,
    required IconData icon,
    required Color color,
    required TransactionCategoryType type,
    bool isDefault = false,
  });

  /// Met à jour une catégorie existante
  Future<Result<TransactionCategoryEntity>> updateCategory(
    TransactionCategoryEntity category,
  );

  /// Supprime une catégorie
  Future<Result<void>> deleteCategory(String categoryId);

  /// Récupère les catégories par type (income/expense)
  Future<Result<List<TransactionCategoryEntity>>> getCategoriesByType(
    TransactionCategoryType type,
  );

  /// Récupère les catégories par défaut du système
  Future<Result<List<TransactionCategoryEntity>>> getDefaultCategories();

  /// Récupère les catégories personnalisées de l'utilisateur
  Future<Result<List<TransactionCategoryEntity>>> getCustomCategories();

  /// Recherche des catégories par nom
  Future<Result<List<TransactionCategoryEntity>>> searchCategoriesByName(
    String query,
  );

  /// Vérifie si un nom de catégorie existe déjà
  Future<Result<bool>> isCategoryNameExists(String name);

  /// Active ou désactive une catégorie
  Future<Result<void>> toggleCategoryStatus(String categoryId, bool isActive);

  /// Récupère les catégories les plus utilisées
  Future<Result<List<TransactionCategoryEntity>>> getMostUsedCategories({
    int limit = 10,
  });

  /// Récupère les statistiques d'utilisation des catégories
  Future<Result<Map<String, dynamic>>> getCategoryUsageStats({
    DateTime? startDate,
    DateTime? endDate,
  });

  /// Initialise les catégories par défaut du système
  Future<Result<List<TransactionCategoryEntity>>> initializeDefaultCategories();

  /// Archive une catégorie (soft delete)
  Future<Result<void>> archiveCategory(String categoryId);

  /// Restaure une catégorie archivée
  Future<Result<void>> restoreCategory(String categoryId);

  /// Récupère le nombre de transactions par catégorie
  Future<Result<Map<String, int>>> getTransactionCountByCategory({
    DateTime? startDate,
    DateTime? endDate,
  });

  /// Fusionne deux catégories (déplace toutes les transactions vers la catégorie cible)
  Future<Result<void>> mergeCategories({
    required String sourceCategoryId,
    required String targetCategoryId,
  });

  /// Valide les données d'une catégorie avant création/modification
  Future<Result<bool>> validateCategory({
    required String name,
    required TransactionCategoryType type,
    String? excludeCategoryId,
  });
}
