import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class TransactionCategoryRepositoryMockImpl
    implements TransactionCategoryRepository {
  TransactionCategoryRepositoryMockImpl({
    required MockDataSource mockDataSource,
  }) : _mockDataSource = mockDataSource;

  final MockDataSource _mockDataSource;

  @override
  String toString() {
    return '$runtimeType()';
  }

  @override
  Stream<Result<List<TransactionCategoryEntity>>> watchAllCategories() async* {
    Result<List<TransactionCategoryEntity>> onData(
      List<TransactionCategoryEntity> accounts,
    ) {
      return Result.ok(accounts);
    }

    try {
      await Future.delayed(const Duration(seconds: 1));

      final accountData = await _mockDataSource.getTransactionCategoryData();
      yield onData(accountData);

      final stream = _mockDataSource.transactionCategoryDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(CategoryUnknownException());
    }
  }

  @override
  Stream<Result<TransactionCategoryEntity>> watchCategoryById(
    String categoryId,
  ) async* {
    Result<TransactionCategoryEntity> onData(
      List<TransactionCategoryEntity> categories,
    ) {
      final category = categories.where((existingCategory) {
        return existingCategory.id == categoryId;
      }).firstOrNull;
      if (category == null) {
        return Result.error(TransactionCategoryNotFoundException(categoryId));
      }
      return Result.ok(category);
    }

    try {
      await Future.delayed(const Duration(seconds: 1));

      final categoryData = await _mockDataSource.getTransactionCategoryData();
      yield onData(categoryData);

      final stream = _mockDataSource.transactionCategoryDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(CategoryUnknownException());
    }
  }
}
