import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

/// Use case pour mettre à jour le solde d'un compte
class UpdateAccountBalanceUseCase {
  const UpdateAccountBalanceUseCase(this._accountRepository);

  final AccountRepository _accountRepository;

  /// Met à jour le solde d'un compte avec validation métier
  Future<Result<AccountEntity>> call({
    required String accountId,
    required double amount,
    required bool isCredit,
    String? description,
  }) async {
    try {
      // Validation du montant
      if (amount <= 0) {
        return Result.error(
          InvalidAmountException(amount, 'Amount must be positive'),
        );
      }

      // Vérification de l'existence du compte
      final accountResult = await _accountRepository
          .watchAccountById(accountId)
          .first;
      if (!accountResult.hasData) {
        return Result.error(AccountNotFoundException(accountId));
      }

      final account = accountResult.asOk.value;

      // Validation pour les débits
      if (!isCredit) {
        final newBalance = account.balance - amount;

        // Vérification découvert pour comptes non-crédit
        if (account.type != AccountType.credit && newBalance < 0) {
          return Result.error(
            InsufficientBalanceException(
              requestedAmount: amount,
              availableBalance: account.balance,
            ),
          );
        }
      }

      // Mise à jour du solde
      return await _accountRepository.updateAccountBalance(
        accountId: accountId,
        amount: amount,
        isCredit: isCredit,
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
