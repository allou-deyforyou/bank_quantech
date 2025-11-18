import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'credit_card_repository_deps.g.dart';

/// [CreditCard]
final creditCardRepositoryMockProvider = creditCardRepositoryProvider
    .overrideWith((ref) {
      return CreditCardRepositoryMockImpl(
        mockDataSource: ref.read(mockDataSourceProvider),
        accountRepository: ref.read(accountRepositoryProvider),
      );
    });

@Riverpod(dependencies: [dioDataSource])
CreditCardRepository creditCardRepository(Ref ref) {
  return CreditCardRepositoryDioImpl(
    dioDataSource: ref.read(dioDataSourceProvider),
  );
}

@Riverpod(dependencies: [sembastDataSource])
CreditCardLocalRepository creditCardLocalRepository(Ref ref) {
  return CreditCardLocalRepositorySembastImpl(
    sembastDataSource: ref.read(sembastDataSourceProvider),
  );
}
