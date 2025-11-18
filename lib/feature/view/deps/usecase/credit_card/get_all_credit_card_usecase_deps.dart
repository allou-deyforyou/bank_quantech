import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'get_all_credit_card_usecase_deps.g.dart';

@Riverpod(
  dependencies: [
    creditCardRepository,
    creditCardLocalRepository,
  ],
)
SyncAllCreditCardsUseCase syncAllCreditCardsUseCase(Ref ref) {
  return SyncAllCreditCardsUseCase(
    creditCardRepository: ref.read(
      creditCardRepositoryProvider,
    ),
    creditCardLocalRepository: ref.read(
      creditCardLocalRepositoryProvider,
    ),
  );
}

@Riverpod(
  dependencies: [
    creditCardRepository,
    creditCardLocalRepository,
  ],
)
GetAllCreditCardsUseCase getAllCreditCardsUseCase(Ref ref) {
  return GetAllCreditCardsUseCase(
    creditCardLocalRepository: ref.read(
      creditCardLocalRepositoryProvider,
    ),
  );
}

@Riverpod(
  dependencies: [
    syncAllCreditCardsUseCase,
    getAllCreditCardsUseCase,
  ],
)
GetAllCreditCardsWithSyncUseCase getAllCreditCardsWithSyncUseCase(Ref ref) {
  return GetAllCreditCardsWithSyncUseCase(
    getAllCreditCardsUseCase: ref.read(
      getAllCreditCardsUseCaseProvider,
    ),
    syncAllCreditCardsUseCase: ref.read(
      syncAllCreditCardsUseCaseProvider,
    ),
  );
}
