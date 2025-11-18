import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class TransactionCategoryRepositoryDioImpl
    implements TransactionCategoryRepository {
  TransactionCategoryRepositoryDioImpl({required DioDataSource dioDataSource})
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
  Stream<Result<List<TransactionCategoryEntity>>> watchAllCategories() async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Stream<Result<TransactionCategoryEntity>> watchCategoryById(
    String categoryId,
  ) async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }
}
