import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

/// Use case pour supprimer un compte
class DeleteAccountUseCase {
  const DeleteAccountUseCase(this._accountRepository);

  final AccountRepository _accountRepository;

  /// Supprime un compte avec validation métier
  Future<Result<void>> call(String accountId) async {
    try {
      // Vérification de l'existence du compte
      final accountResult = await _accountRepository
          .watchAccountById(accountId)
          .first;
      if (!accountResult.hasData) {
        return Result.error(AccountNotFoundException(accountId));
      }

      final account = accountResult.asOk.value;

      // Vérification que le compte peut être supprimé
      if (account.balance != 0) {
        return Result.error(
          AccountDeletionException(
            accountId,
            'Account balance must be zero before deletion. Current balance: ${account.balance}',
          ),
        );
      }

      // Vérification que le compte n'est pas le compte principal
      // (dans une vraie implémentation, on vérifierait s'il y a d'autres comptes)

      // Suppression du compte
      return await _accountRepository.deleteAccount(accountId);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
