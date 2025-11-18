import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'card_add_logic_create_credit_card.g.dart';

@Riverpod(
  dependencies: [
    createCreditCardUseCase,
    CardAddSelectedColor,
    cardAddNameController,
    cardAddCardNumberController,
    cardAddValidThruDate,
    cardAddCvvController,
  ],
)
Future<void> cardAddCreateCreditCardController(Ref ref) async {
  final selectedColor = ref.read(cardAddSelectedColorProvider);
  final nameController = ref.read(cardAddNameControllerProvider);
  final cardNumberController = ref.read(cardAddCardNumberControllerProvider);
  final validThruDate = ref.read(cardAddValidThruDateProvider);
  final cvvController = ref.read(cardAddCvvControllerProvider);

  final createCreditCardUseCase = ref.read(createCreditCardUseCaseProvider);
  final result = await createCreditCardUseCase(
    cardType: CardType.visa,
    cardColor: selectedColor,
    cardHolderName: nameController.text,
    cardNumber: cardNumberController.text,
    expiryDate: validThruDate,
    cvv: cvvController.text,
  );
  return result.when(
    ok: (_) => null,
    error: (error) {
      Zone.current.handleUncaughtError(error, StackTrace.empty);
      throw error;
    },
  );
}
