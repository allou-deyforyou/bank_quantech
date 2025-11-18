import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'card_information_logic_selected_card_controller.g.dart';

@Riverpod(
  dependencies: [
    getAllCreditCardsUseCase,
    syncAllCreditCardsUseCase,
    cardAddSelectedCard,
  ],
)
class CardInformationCardController extends _$CardInformationCardController {
  @override
  Stream<List<CreditCardEntity>> build() {
    // Utilisation du use-case avec synchronisation automatique
    final getAllCreditCards = ref.read(
      getAllCreditCardsUseCaseProvider,
    );
    final data = getAllCreditCards();
    return data.map((result) {
      return result.when(
        ok: (value) {
          final selectedCard = ref.read(cardAddSelectedCardProvider).value;
          return value..sort((a, b) {
            if (a.id == selectedCard.id) return -1;
            if (b.id == selectedCard.id) return 1;
            return 0;
          });
        },
        error: (error) {
          // Observabilité : signale l'erreur au zone handler avant de la
          // repropager afin que la stack trace soit collectée.
          Zone.current.handleUncaughtError(error, StackTrace.empty);
          throw error;
        },
      );
    });
  }

  /// Méthode pour forcer une synchronisation manuelle
  Future<void> refreshCards() async {
    final syncUseCase = ref.read(syncAllCreditCardsUseCaseProvider);
    final result = await syncUseCase();

    // Gestion des erreurs de synchronisation
    result.fold(
      onOk: (_) {
        // Synchronisation réussie, le stream se met automatiquement à jour
      },
      onError: (error) {
        // Log de l'erreur ou gestion appropriée
        // En production, on pourrait notifier l'utilisateur
      },
    );
  }
}

@Riverpod()
ValueNotifier<CreditCardEntity> cardAddSelectedCard(Ref ref) {
  throw UnimplementedError('No card selected');
}
