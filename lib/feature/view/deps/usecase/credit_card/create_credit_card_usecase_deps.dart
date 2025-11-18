import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'create_credit_card_usecase_deps.g.dart';

@Riverpod(
  dependencies: [
    creditCardRepository,
    creditCardLocalRepository,
  ],
)
CreateCreditCardUseCase createCreditCardUseCase(Ref ref) {
  return CreateCreditCardUseCase(
    creditCardRepository: ref.read(
      creditCardRepositoryProvider,
    ),
    creditCardLocalRepository: ref.read(
      creditCardLocalRepositoryProvider,
    ),
  );
}
