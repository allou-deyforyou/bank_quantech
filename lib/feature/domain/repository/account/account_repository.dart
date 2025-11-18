import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

part 'account_local_repository.dart';

abstract interface class AccountRepository {
  const AccountRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  /// Récupère tous les comptes
  Stream<Result<List<AccountEntity>>> watchAllAccounts();

  /// Récupère un compte par son ID
  Stream<Result<AccountEntity>> watchAccountById(String accountId);

  /// Crée un nouveau compte
  Future<Result<AccountEntity>> createAccount({
    required String accountName,
    required AccountType type,
    required String currency,
    double initialBalance = 0.0,
  });

  /// Supprime un compte
  Future<Result<void>> deleteAccount(String accountId);

  /// Met à jour le solde d'un compte
  Future<Result<AccountEntity>> updateAccountBalance({
    required String accountId,
    required double amount,
    required bool isCredit, // true = crédit, false = débit
  });
}
