/// Exception de base pour tous les erreurs liées aux transactions
abstract class TransactionException implements Exception {
  const TransactionException(this.message, [this.details]);

  final String message;
  final String? details;

  @override
  String toString() =>
      '$runtimeType: $message${details != null ? ' ($details)' : ''}';
}

/// Exception lancée quand une transaction n'est pas trouvée
class TransactionNotFoundException extends TransactionException {
  const TransactionNotFoundException(String transactionId)
    : super('Transaction not found', 'Transaction ID: $transactionId');
}

/// Exception lancée quand aucune transaction n'est trouvée pour un compte
class AccountTransactionsNotFoundException extends TransactionException {
  const AccountTransactionsNotFoundException(String accountId)
    : super('No transactions found for account', 'Account ID: $accountId');
}

/// Exception lancée quand le montant de la transaction est invalide
class InvalidTransactionAmountException extends TransactionException {
  const InvalidTransactionAmountException(double amount, String reason)
    : super('Invalid transaction amount', 'Amount: $amount, Reason: $reason');
}

/// Exception lancée quand le type de transaction est invalide
class InvalidTransactionTypeException extends TransactionException {
  const InvalidTransactionTypeException(String transactionType)
    : super('Invalid transaction type', 'Type: $transactionType');
}

/// Exception lancée quand le statut de transaction est invalide
class InvalidTransactionStatusException extends TransactionException {
  const InvalidTransactionStatusException(
    String currentStatus,
    String targetStatus,
  ) : super(
        'Invalid transaction status transition',
        'From: $currentStatus, To: $targetStatus',
      );
}

/// Exception lancée quand une transaction est déjà annulée
class TransactionAlreadyCancelledException extends TransactionException {
  const TransactionAlreadyCancelledException(String transactionId)
    : super(
        'Transaction is already cancelled',
        'Transaction ID: $transactionId',
      );
}

/// Exception lancée quand une transaction ne peut pas être annulée
class TransactionCannotBeCancelledException extends TransactionException {
  const TransactionCannotBeCancelledException(
    String transactionId,
    String reason,
  ) : super(
        'Transaction cannot be cancelled',
        'Transaction ID: $transactionId, Reason: $reason',
      );
}

/// Exception lancée quand une transaction est déjà complétée
class TransactionAlreadyCompletedException extends TransactionException {
  const TransactionAlreadyCompletedException(String transactionId)
    : super(
        'Transaction is already completed',
        'Transaction ID: $transactionId',
      );
}

/// Exception lancée quand une transaction a échoué
class TransactionFailedException extends TransactionException {
  const TransactionFailedException(String transactionId, String reason)
    : super(
        'Transaction failed',
        'Transaction ID: $transactionId, Reason: $reason',
      );
}

/// Exception lancée quand le solde est insuffisant pour la transaction
class InsufficientFundsException extends TransactionException {
  const InsufficientFundsException({
    required String accountId,
    required double requestedAmount,
    required double availableBalance,
  }) : super(
         'Insufficient funds for transaction',
         'Account: $accountId, Requested: $requestedAmount, Available: $availableBalance',
       );
}

/// Exception lancée quand le compte de la transaction n'existe pas
class TransactionAccountNotFoundException extends TransactionException {
  const TransactionAccountNotFoundException(String accountId)
    : super('Account for transaction not found', 'Account ID: $accountId');
}

/// Exception lancée quand la carte de la transaction n'existe pas
class TransactionCardNotFoundException extends TransactionException {
  const TransactionCardNotFoundException(String cardId)
    : super('Card for transaction not found', 'Card ID: $cardId');
}

/// Exception lancée quand la description de transaction est invalide
class InvalidTransactionDescriptionException extends TransactionException {
  const InvalidTransactionDescriptionException(
    String description,
    String reason,
  ) : super(
        'Invalid transaction description',
        'Description: $description, Reason: $reason',
      );
}

/// Exception lancée quand la date de transaction est invalide
class InvalidTransactionDateException extends TransactionException {
  const InvalidTransactionDateException(String date, String reason)
    : super('Invalid transaction date', 'Date: $date, Reason: $reason');
}

/// Exception lancée quand la référence de transaction est invalide ou dupliquée
class InvalidTransactionReferenceException extends TransactionException {
  const InvalidTransactionReferenceException(String reference, String reason)
    : super(
        'Invalid transaction reference',
        'Reference: $reference, Reason: $reason',
      );
}

/// Exception lancée lors d'erreurs de validation des données de transaction
class TransactionValidationException extends TransactionException {
  const TransactionValidationException(String field, String reason)
    : super('Transaction validation failed', 'Field: $field, Reason: $reason');
}

/// Exception lancée quand une transaction ne peut pas être supprimée
class TransactionDeletionException extends TransactionException {
  const TransactionDeletionException(String transactionId, String reason)
    : super(
        'Cannot delete transaction',
        'Transaction ID: $transactionId, Reason: $reason',
      );
}

/// Exception lancée lors d'erreurs de concurrence (modifications simultanées)
class TransactionConcurrencyException extends TransactionException {
  const TransactionConcurrencyException(String transactionId)
    : super(
        'Transaction was modified by another operation',
        'Transaction ID: $transactionId',
      );
}

/// Exception lancée quand la limite de transactions est atteinte
class TransactionLimitExceededException extends TransactionException {
  const TransactionLimitExceededException(
    int currentCount,
    int maxAllowed,
    String period,
  ) : super(
        'Transaction limit exceeded',
        'Current: $currentCount, Max allowed: $maxAllowed per $period',
      );
}

/// Exception lancée quand le montant de transaction dépasse la limite autorisée
class TransactionAmountLimitExceededException extends TransactionException {
  const TransactionAmountLimitExceededException({
    required double requestedAmount,
    required double dailyLimit,
    required double usedToday,
  }) : super(
         'Transaction amount limit exceeded',
         'Requested: $requestedAmount, Daily limit: $dailyLimit, Used today: $usedToday',
       );
}

/// Exception lancée lors d'erreurs de calcul de solde
class BalanceCalculationException extends TransactionException {
  const BalanceCalculationException(String accountId, String reason)
    : super(
        'Balance calculation failed',
        'Account ID: $accountId, Reason: $reason',
      );
}

/// Exception lancée quand une transaction en attente ne peut pas être modifiée
class PendingTransactionException extends TransactionException {
  const PendingTransactionException(String transactionId, String operation)
    : super(
        'Cannot modify pending transaction',
        'Transaction ID: $transactionId, Operation: $operation',
      );
}

/// Exception lancée lors d'erreurs de recherche de transactions
class TransactionSearchException extends TransactionException {
  const TransactionSearchException(String query, String reason)
    : super('Transaction search failed', 'Query: $query, Reason: $reason');
}

/// Exception lancée quand une transaction récurrente ne peut pas être créée
class RecurringTransactionException extends TransactionException {
  const RecurringTransactionException(String reason)
    : super('Recurring transaction creation failed', reason);
}

/// Exception lancée lors d'erreurs de statistiques de transactions
class TransactionStatsException extends TransactionException {
  const TransactionStatsException(String accountId, String reason)
    : super(
        'Transaction statistics calculation failed',
        'Account ID: $accountId, Reason: $reason',
      );
}

/// Exception lancée quand une transaction nécessite une autorisation supplémentaire
class TransactionAuthorizationRequiredException extends TransactionException {
  const TransactionAuthorizationRequiredException(
    String transactionId,
    String authType,
  ) : super(
        'Transaction requires additional authorization',
        'Transaction ID: $transactionId, Auth type: $authType',
      );
}

/// Exception lancée lors d'erreurs de fraud detection
class TransactionFraudDetectedException extends TransactionException {
  const TransactionFraudDetectedException(String transactionId, String reason)
    : super(
        'Potential fraud detected',
        'Transaction ID: $transactionId, Reason: $reason',
      );
}

/// Exception lancée quand une transaction est en dehors des heures autorisées
class TransactionOutsideBusinessHoursException extends TransactionException {
  const TransactionOutsideBusinessHoursException(String currentTime)
    : super(
        'Transaction not allowed outside business hours',
        'Current time: $currentTime',
      );
}
