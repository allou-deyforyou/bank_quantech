import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

abstract interface class AccountRepository {
  const AccountRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  /// Récupère tous les comptes d'un utilisateur
  Future<Result<List<AccountEntity>>> getUserAccounts(String userId);

  /// Récupère un compte par son ID
  Future<Result<AccountEntity>> getAccountById(String accountId);

  /// Crée un nouveau compte
  Future<Result<AccountEntity>> createAccount({
    required String accountName,
    required AccountType type,
    required String currency,
    double initialBalance = 0.0,
  });

  /// Met à jour un compte existant
  Future<Result<AccountEntity>> updateAccount(AccountEntity account);

  /// Supprime un compte
  Future<Result<void>> deleteAccount(String accountId);

  /// Active ou désactive un compte
  Future<Result<void>> toggleAccountStatus(String accountId, bool isActive);

  /// Met à jour le solde d'un compte
  Future<Result<AccountEntity>> updateAccountBalance({
    required String accountId,
    required double amount,
    required bool isCredit, // true = crédit, false = débit
  });

  /// Récupère les comptes par type
  Future<Result<List<AccountEntity>>> getAccountsByType(
    String userId,
    AccountType type,
  );

  /// Récupère les comptes actifs d'un utilisateur
  Future<Result<List<AccountEntity>>> getActiveAccounts(String userId);

  /// Récupère le solde total de tous les comptes d'un utilisateur
  Future<Result<double>> getTotalUserBalance(String userId);

  /// Vérifie si un numéro de compte existe déjà
  Future<Result<bool>> isAccountNumberExists(String accountNumber);

  /// Génère un nouveau numéro de compte unique
  Future<Result<String>> generateAccountNumber();

  /// Transfert entre comptes
  Future<Result<void>> transferBetweenAccounts({
    required String fromAccountId,
    required String toAccountId,
    required double amount,
    String? description,
  });

  /// Récupère l'historique des soldes d'un compte
  Future<Result<List<Map<String, dynamic>>>> getAccountBalanceHistory(
    String accountId, {
    DateTime? startDate,
    DateTime? endDate,
  });

  /// Calcule le solde disponible (tenant compte des transactions en cours)
  Future<Result<double>> getAvailableBalance(String accountId);

  /// Vérifie si un montant peut être débité du compte
  Future<Result<bool>> canDebitAmount(String accountId, double amount);

  /// Gèle temporairement un compte
  Future<Result<void>> freezeAccount(String accountId, String reason);

  /// Dégèle un compte
  Future<Result<void>> unfreezeAccount(String accountId);

  /// Récupère les statistiques d'un compte
  Future<Result<Map<String, dynamic>>> getAccountStats(
    String accountId, {
    DateTime? startDate,
    DateTime? endDate,
  });

  /// Recherche des comptes par nom
  Future<Result<List<AccountEntity>>> searchAccountsByName(
    String userId,
    String query,
  );

  /// Récupère le nombre total de comptes d'un utilisateur
  Future<Result<int>> getUserAccountsCount(String userId);

  /// Valide les données d'un compte avant création/modification
  Future<Result<bool>> validateAccount({
    required String accountName,
    required AccountType type,
    required String currency,
    String? excludeAccountId,
  });

  /// Archive un compte (soft delete)
  Future<Result<void>> archiveAccount(String accountId);

  /// Restaure un compte archivé
  Future<Result<void>> restoreAccount(String accountId);

  /// Récupère les comptes avec un solde négatif
  Future<Result<List<AccountEntity>>> getOverdraftAccounts(String userId);
}
