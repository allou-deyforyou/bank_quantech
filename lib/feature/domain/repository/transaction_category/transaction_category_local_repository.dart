part of 'transaction_category_repository.dart';

abstract interface class TransactionCategoryLocalRepository {
  const TransactionCategoryLocalRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  Future<Result<void>> saveCategories(List<TransactionCategoryEntity> categories);

  Future<Result<void>> updateCategory(TransactionCategoryEntity category);

  Future<Result<void>> deleteCategory(String categoryId);

  Stream<Result<List<TransactionCategoryEntity>>> watchAllCategories();

  Stream<Result<TransactionCategoryEntity>> watchCategoryById(
    String categoryId,
  );
}
