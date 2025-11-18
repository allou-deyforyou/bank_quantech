import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'home_logic_transaction_controller.g.dart';

/// Provider pour la liste des cartes de crédit avec synchronisation
@Riverpod(dependencies: [getAllTransactionsUseCase, syncAllTransactionsUseCase])
class HomeTransactionController extends _$HomeTransactionController {
  @override
  Stream<List<TransactionEntity>> build() {
    // Utilisation du use-case avec synchronisation automatique
    final getAllTransactions = ref.read(getAllTransactionsUseCaseProvider);
    final data = getAllTransactions();
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
  Future<void> refreshTransactions() async {
    final syncUseCase = ref.read(syncAllTransactionsUseCaseProvider);
    await syncUseCase();
  }
}
