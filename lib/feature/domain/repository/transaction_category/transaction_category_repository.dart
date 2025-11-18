import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

part 'transaction_category_local_repository.dart';

abstract interface class TransactionCategoryRepository {
  const TransactionCategoryRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  /// Récupère toutes les catégories de transactions
  Stream<Result<List<TransactionCategoryEntity>>> watchAllCategories();

  /// Récupère une catégorie par son ID
  Stream<Result<TransactionCategoryEntity>> watchCategoryById(
    String categoryId,
  );
}
