import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'transaction_category_repository_deps.g.dart';

/// [TransactionCategory]
final categoryRepositoryMockProvider = categoryRepositoryProvider.overrideWith((
  ref,
) {
  return TransactionCategoryRepositoryMockImpl(
    mockDataSource: ref.read(mockDataSourceProvider),
  );
});

@Riverpod(dependencies: [dioDataSource])
TransactionCategoryRepository categoryRepository(Ref ref) {
  return TransactionCategoryRepositoryDioImpl(
    dioDataSource: ref.read(dioDataSourceProvider),
  );
}

@Riverpod(dependencies: [sembastDataSource])
TransactionCategoryLocalRepository categoryLocalRepository(Ref ref) {
  return TransactionCategoryLocalRepositorySembastImpl(
    sembastDataSource: ref.read(sembastDataSourceProvider),
  );
}
