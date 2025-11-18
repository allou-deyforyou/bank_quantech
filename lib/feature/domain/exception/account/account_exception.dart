/// Exception de base pour tous les erreurs liées aux comptes
abstract class AccountException implements Exception {
  const AccountException(this.message, [this.details]);

  final String message;
  final String? details;

  @override
  String toString() =>
      '$runtimeType: $message${details != null ? ' ($details)' : ''}';
}

/// Exception lancée quand un compte n'est pas trouvé
class AccountNotFoundException extends AccountException {
  const AccountNotFoundException(String accountId)
    : super('Account not found', 'Account ID: $accountId');
}

/// Exception lancée quand un utilisateur n'est pas trouvé
class UserNotFoundException extends AccountException {
  const UserNotFoundException(String userId)
    : super('User not found', 'User ID: $userId');
}

/// Exception lancée quand un numéro de compte existe déjà
class AccountNumberAlreadyExistsException extends AccountException {
  const AccountNumberAlreadyExistsException(String accountNumber)
    : super('Account number already exists', 'Account number: $accountNumber');
}

/// Exception lancée quand le solde est insuffisant pour une opération
class InsufficientBalanceException extends AccountException {
  const InsufficientBalanceException({
    required double requestedAmount,
    required double availableBalance,
  }) : super(
         'Insufficient balance',
         'Requested: $requestedAmount, Available: $availableBalance',
       );
}

/// Exception lancée quand un compte est inactif
class AccountInactiveException extends AccountException {
  const AccountInactiveException(String accountId)
    : super('Account is inactive', 'Account ID: $accountId');
}

/// Exception lancée quand un compte est gelé
class AccountFrozenException extends AccountException {
  const AccountFrozenException(String accountId, [String? reason])
    : super(
        'Account is frozen',
        reason != null
            ? 'Account ID: $accountId, Reason: $reason'
            : 'Account ID: $accountId',
      );
}

/// Exception lancée quand le montant est invalide
class InvalidAmountException extends AccountException {
  const InvalidAmountException(double amount, [String? reason])
    : super(
        'Invalid amount',
        'Amount: $amount${reason != null ? ', Reason: $reason' : ''}',
      );
}

/// Exception lancée quand la devise n'est pas supportée
class UnsupportedCurrencyException extends AccountException {
  const UnsupportedCurrencyException(String currency)
    : super('Unsupported currency', 'Currency: $currency');
}

/// Exception lancée quand le type de compte est invalide
class InvalidAccountTypeException extends AccountException {
  const InvalidAccountTypeException(String accountType)
    : super('Invalid account type', 'Type: $accountType');
}

/// Exception lancée lors d'une erreur de transfert entre comptes
class TransferException extends AccountException {
  const TransferException({
    required String fromAccountId,
    required String toAccountId,
    required String reason,
  }) : super(
         'Transfer failed',
         'From: $fromAccountId, To: $toAccountId, Reason: $reason',
       );
}

/// Exception lancée quand on essaie de transférer vers le même compte
class SelfTransferException extends AccountException {
  const SelfTransferException(String accountId)
    : super('Cannot transfer to same account', 'Account ID: $accountId');
}

/// Exception lancée quand la génération du numéro de compte échoue
class AccountNumberGenerationException extends AccountException {
  const AccountNumberGenerationException([String? reason])
    : super('Failed to generate account number', reason);
}

/// Exception lancée quand le nom du compte est invalide
class InvalidAccountNameException extends AccountException {
  const InvalidAccountNameException(String accountName, [String? reason])
    : super(
        'Invalid account name',
        'Name: $accountName${reason != null ? ', Reason: $reason' : ''}',
      );
}

/// Exception lancée quand un compte ne peut pas être supprimé
class AccountDeletionException extends AccountException {
  const AccountDeletionException(String accountId, String reason)
    : super('Cannot delete account', 'Account ID: $accountId, Reason: $reason');
}

/// Exception lancée quand l'historique des soldes n'est pas disponible
class BalanceHistoryNotFoundException extends AccountException {
  const BalanceHistoryNotFoundException(String accountId)
    : super('Balance history not found', 'Account ID: $accountId');
}

/// Exception lancée quand une opération de découvert n'est pas autorisée
class OverdraftNotAllowedException extends AccountException {
  const OverdraftNotAllowedException(String accountId)
    : super(
        'Overdraft not allowed for this account type',
        'Account ID: $accountId',
      );
}

/// Exception lancée lors d'erreurs de validation des données du compte
class AccountValidationException extends AccountException {
  const AccountValidationException(String field, String reason)
    : super('Account validation failed', 'Field: $field, Reason: $reason');
}

/// Exception lancée quand un compte archivé ne peut pas être modifié
class ArchivedAccountException extends AccountException {
  const ArchivedAccountException(String accountId)
    : super('Cannot modify archived account', 'Account ID: $accountId');
}

/// Exception lancée lors d'erreurs de concurrence (modifications simultanées)
class AccountConcurrencyException extends AccountException {
  const AccountConcurrencyException(String accountId)
    : super(
        'Account was modified by another operation',
        'Account ID: $accountId',
      );
}

/// Exception lancée quand la limite de comptes par utilisateur est atteinte
class AccountLimitExceededException extends AccountException {
  const AccountLimitExceededException(int currentCount, int maxAllowed)
    : super(
        'Account limit exceeded',
        'Current: $currentCount, Max allowed: $maxAllowed',
      );
}

class AccountUnknownException extends AccountException {
  const AccountUnknownException()
    : super(
        'Unknown account error',
        'An unknown error has occurred with the account',
      );
}
