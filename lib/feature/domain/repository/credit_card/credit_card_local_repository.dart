part of 'credit_card_repository.dart';

abstract interface class CreditCardLocalRepository {
  const CreditCardLocalRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  Future<Result<void>> saveCreditCards(List<CreditCardEntity> cards);

  Future<Result<void>> updateCreditCard(CreditCardEntity card);

  Future<Result<void>> deleteCreditCard(String cardId);

  Stream<Result<List<CreditCardEntity>>> watchAllCreditCards();

  Stream<Result<CreditCardEntity>> watchCreditCardById(String cardId);

  Stream<Result<List<CreditCardEntity>>> watchActiveCreditCards();
}
