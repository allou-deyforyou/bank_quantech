import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'home_logic_card_controller.g.dart';

/// Provider pour la liste des cartes de crédit avec synchronisation
@Riverpod(dependencies: [getAllCreditCardsUseCase, syncAllCreditCardsUseCase])
class HomeCardController extends _$HomeCardController {
  @override
  Stream<List<CreditCardEntity>> build() {
    // Utilisation du use-case avec synchronisation automatique
    final getAllCreditCards = ref.read(getAllCreditCardsUseCaseProvider);
    final data = getAllCreditCards();
    return data.map((result) {
      return result.unwrapOrElse((error) {
        // Observabilité : signale l'erreur au zone handler avant de la
        // repropager afin que la stack trace soit collectée.
        Zone.current.handleUncaughtError(error, StackTrace.empty);
        throw error;
      });
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

@Riverpod(dependencies: [HomeCardController])
ValueNotifier<CreditCardEntity> homeSelectedCard(Ref ref) {
  final cardsValue = ref.watch(homeCardControllerProvider);
  final cards = cardsValue.requireValue;
  return ref.disposeAndListenChangeNotifier(ValueNotifier(cards.first));
}
