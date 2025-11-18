import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'account_repository_deps.g.dart';

/// [Account]
final accountRepositoryMockProvider = accountRepositoryProvider.overrideWith((
  ref,
) {
  return AccountRepositoryMockImpl(
    mockDataSource: ref.read(mockDataSourceProvider),
  );
});

@Riverpod(dependencies: [dioDataSource])
AccountRepository accountRepository(Ref ref) {
  return AccountRepositoryDioImpl(
    dioDataSource: ref.read(dioDataSourceProvider),
  );
}

@Riverpod(dependencies: [sembastDataSource])
AccountLocalRepository accountLocalRepository(Ref ref) {
  return AccountLocalRepositorySembastImpl(
    sembastDataSource: ref.read(sembastDataSourceProvider),
  );
}
