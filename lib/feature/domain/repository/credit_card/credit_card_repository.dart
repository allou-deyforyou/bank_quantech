import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

part 'credit_card_local_repository.dart';

abstract interface class CreditCardRepository {
  const CreditCardRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  /// Récupère toutes les cartes
  Stream<Result<List<CreditCardEntity>>> watchAllCreditCards();

  /// Récupère une carte de crédit par son ID
  Stream<Result<CreditCardEntity>> watchCreditCardById(String cardId);

  /// Ajoute une nouvelle carte de crédit
  Future<Result<CreditCardEntity>> createCreditCard({
    required CardType cardType,
    required String cardColor,
    required String cardHolderName,
    required String cardNumber,
    required DateTime expiryDate,
    required String cvv,
  });

  /// Met à jour une carte de crédit existante
  Future<Result<CreditCardEntity>> updateCreditCard(
    String cardId, {
    required CardType? cardType,
    required String? cardColor,
  });

  /// Supprime une carte de crédit
  Future<Result<void>> deleteCreditCard(String cardId);

  /// Récupère les cartes actives d'un utilisateur
  Stream<Result<List<CreditCardEntity>>> watchActiveCreditCards();
}
