import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'card_information_logic_category_controller.g.dart';

/// Provider pour la liste des cartes de crédit avec synchronisation
@Riverpod(
  dependencies: [getAllCategoriesWithSyncUseCase, syncAllCategoriesUseCase],
)
class CardInformationCategoryController
    extends _$CardInformationCategoryController {
  @override
  Stream<List<TransactionCategoryEntity>> build() {
    // Utilisation du use-case avec synchronisation automatique
    final getAllCategoriesWithSync = ref.read(
      getAllCategoriesWithSyncUseCaseProvider,
    );
    final data = getAllCategoriesWithSync();
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
  Future<void> refreshCategories() async {
    final syncUseCase = ref.read(syncAllCategoriesUseCaseProvider);
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
