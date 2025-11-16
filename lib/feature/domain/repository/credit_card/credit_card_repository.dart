import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

abstract interface class CreditCardRepository {
  const CreditCardRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  /// Récupère toutes les cartes de crédit d'un utilisateur
  Future<Result<List<CreditCardEntity>>> getUserCreditCards(String userId);

  /// Récupère une carte de crédit par son ID
  Future<Result<CreditCardEntity>> getCreditCardById(String cardId);

  /// Ajoute une nouvelle carte de crédit
  Future<Result<CreditCardEntity>> createCreditCard({
    required CardType cardType,
    required String cardNumber,
    required String cardHolderName,
    required DateTime expiryDate,
    required String cvv,
    required String color,
  });

  /// Met à jour une carte de crédit existante
  Future<Result<CreditCardEntity>> updateCreditCard(
    CreditCardEntity creditCard,
  );

  /// Supprime une carte de crédit
  Future<Result<void>> deleteCreditCard(String cardId);

  /// Active ou désactive une carte de crédit
  Future<Result<void>> toggleCardStatus(String cardId, bool isActive);

  /// Vérifie si un numéro de carte existe déjà
  Future<Result<bool>> isCardNumberExists(String cardNumber);

  /// Récupère les cartes actives d'un utilisateur
  Future<Result<List<CreditCardEntity>>> getActiveCreditCards(String userId);

  /// Récupère les cartes par type
  Future<Result<List<CreditCardEntity>>> getCreditCardsByType(
    String userId,
    CardType cardType,
  );

  /// Met à jour la limite de crédit d'une carte
  Future<Result<void>> updateCreditLimit(String cardId, double newLimit);

  /// Récupère le nombre total de cartes d'un utilisateur
  Future<Result<int>> getUserCreditCardsCount(String userId);

  /// Recherche des cartes par nom du porteur
  Future<Result<List<CreditCardEntity>>> searchCreditCardsByHolderName(
    String userId,
    String holderName,
  );

  /// Valide les données d'une carte de crédit
  Future<Result<bool>> validateCreditCard(CreditCardEntity creditCard);

  /// Récupère les statistiques d'utilisation des cartes
  Future<Result<Map<String, dynamic>>> getCreditCardUsageStats(String userId);

  /// Archive une carte de crédit (soft delete)
  Future<Result<void>> archiveCreditCard(String cardId);

  /// Restaure une carte de crédit archivée
  Future<Result<void>> restoreCreditCard(String cardId);
}
