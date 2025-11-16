/// Exception de base pour tous les erreurs liées aux cartes de crédit
abstract class CreditCardException implements Exception {
  const CreditCardException(this.message, [this.details]);

  final String message;
  final String? details;

  @override
  String toString() =>
      '$runtimeType: $message${details != null ? ' ($details)' : ''}';
}

/// Exception lancée quand une carte de crédit n'est pas trouvée
class CreditCardNotFoundException extends CreditCardException {
  const CreditCardNotFoundException(String cardId)
    : super('Credit card not found', 'Card ID: $cardId');
}

/// Exception lancée quand un utilisateur n'a aucune carte de crédit
class UserCreditCardsNotFoundException extends CreditCardException {
  const UserCreditCardsNotFoundException(String userId)
    : super('No credit cards found for user', 'User ID: $userId');
}

/// Exception lancée quand un numéro de carte existe déjà
class CardNumberAlreadyExistsException extends CreditCardException {
  const CardNumberAlreadyExistsException(String cardNumber)
    : super('Card number already exists', 'Card number: [MASKED]');
}

/// Exception lancée quand une carte est inactive
class CreditCardInactiveException extends CreditCardException {
  const CreditCardInactiveException(String cardId)
    : super('Credit card is inactive', 'Card ID: $cardId');
}

/// Exception lancée quand une carte est expirée
class CreditCardExpiredException extends CreditCardException {
  const CreditCardExpiredException(String cardId, String expiryDate)
    : super(
        'Credit card has expired',
        'Card ID: $cardId, Expired on: $expiryDate',
      );
}

/// Exception lancée quand une carte est bloquée
class CreditCardBlockedException extends CreditCardException {
  const CreditCardBlockedException(String cardId, [String? reason])
    : super(
        'Credit card is blocked',
        reason != null
            ? 'Card ID: $cardId, Reason: $reason'
            : 'Card ID: $cardId',
      );
}

/// Exception lancée quand le CVV est invalide
class InvalidCvvException extends CreditCardException {
  const InvalidCvvException([String? details])
    : super('Invalid CVV code', details);
}

/// Exception lancée quand le numéro de carte est invalide
class InvalidCardNumberException extends CreditCardException {
  const InvalidCardNumberException(String reason)
    : super('Invalid card number', reason);
}

/// Exception lancée quand la date d'expiration est invalide
class InvalidExpiryDateException extends CreditCardException {
  const InvalidExpiryDateException(String reason)
    : super('Invalid expiry date', reason);
}

/// Exception lancée quand le nom du porteur est invalide
class InvalidCardholderNameException extends CreditCardException {
  const InvalidCardholderNameException(String name, String reason)
    : super('Invalid cardholder name', 'Name: $name, Reason: $reason');
}

/// Exception lancée quand le type de carte n'est pas supporté
class UnsupportedCardTypeException extends CreditCardException {
  const UnsupportedCardTypeException(String cardType)
    : super('Unsupported card type', 'Type: $cardType');
}

/// Exception lancée quand la limite de crédit est invalide
class InvalidCreditLimitException extends CreditCardException {
  const InvalidCreditLimitException(double limit, String reason)
    : super('Invalid credit limit', 'Limit: $limit, Reason: $reason');
}

/// Exception lancée quand la limite de crédit est dépassée
class CreditLimitExceededException extends CreditCardException {
  const CreditLimitExceededException({
    required double requestedAmount,
    required double currentLimit,
    required double availableCredit,
  }) : super(
         'Credit limit exceeded',
         'Requested: $requestedAmount, Limit: $currentLimit, Available: $availableCredit',
       );
}

/// Exception lancée quand une carte ne peut pas être supprimée
class CreditCardDeletionException extends CreditCardException {
  const CreditCardDeletionException(String cardId, String reason)
    : super('Cannot delete credit card', 'Card ID: $cardId, Reason: $reason');
}

/// Exception lancée quand le compte associé à la carte n'existe pas
class CardAccountNotFoundException extends CreditCardException {
  const CardAccountNotFoundException(String accountId)
    : super('Account associated with card not found', 'Account ID: $accountId');
}

/// Exception lancée lors d'erreurs de validation des données de la carte
class CreditCardValidationException extends CreditCardException {
  const CreditCardValidationException(String field, String reason)
    : super('Credit card validation failed', 'Field: $field, Reason: $reason');
}

/// Exception lancée quand une carte archivée ne peut pas être modifiée
class ArchivedCreditCardException extends CreditCardException {
  const ArchivedCreditCardException(String cardId)
    : super('Cannot modify archived credit card', 'Card ID: $cardId');
}

/// Exception lancée lors d'erreurs de concurrence (modifications simultanées)
class CreditCardConcurrencyException extends CreditCardException {
  const CreditCardConcurrencyException(String cardId)
    : super(
        'Credit card was modified by another operation',
        'Card ID: $cardId',
      );
}

/// Exception lancée quand la limite de cartes par utilisateur est atteinte
class CreditCardLimitExceededException extends CreditCardException {
  const CreditCardLimitExceededException(int currentCount, int maxAllowed)
    : super(
        'Credit card limit exceeded',
        'Current: $currentCount, Max allowed: $maxAllowed',
      );
}

/// Exception lancée quand une carte est en cours d'utilisation et ne peut pas être désactivée
class CreditCardInUseException extends CreditCardException {
  const CreditCardInUseException(String cardId)
    : super('Credit card is currently in use', 'Card ID: $cardId');
}

/// Exception lancée lors d'erreurs de chiffrement/déchiffrement des données sensibles
class CardDataEncryptionException extends CreditCardException {
  const CardDataEncryptionException(String operation)
    : super('Card data encryption/decryption failed', 'Operation: $operation');
}

/// Exception lancée quand une opération nécessite une vérification supplémentaire
class CardVerificationRequiredException extends CreditCardException {
  const CardVerificationRequiredException(
    String cardId,
    String verificationType,
  ) : super(
        'Additional verification required',
        'Card ID: $cardId, Type: $verificationType',
      );
}

/// Exception lancée quand le statut de la carte ne permet pas l'opération
class InvalidCardStatusException extends CreditCardException {
  const InvalidCardStatusException(
    String cardId,
    String currentStatus,
    String operation,
  ) : super(
        'Invalid card status for operation',
        'Card ID: $cardId, Status: $currentStatus, Operation: $operation',
      );
}

/// Exception lancée lors d'erreurs de recherche de cartes
class CreditCardSearchException extends CreditCardException {
  const CreditCardSearchException(String query, String reason)
    : super('Credit card search failed', 'Query: $query, Reason: $reason');
}
