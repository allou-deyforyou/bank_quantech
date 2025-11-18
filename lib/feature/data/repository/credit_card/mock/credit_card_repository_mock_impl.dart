import 'package:flutter/widgets.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class CreditCardRepositoryMockImpl implements CreditCardRepository {
  CreditCardRepositoryMockImpl({
    required MockDataSource mockDataSource,
    required AccountRepository accountRepository,
  }) : _mockDataSource = mockDataSource,
       _accountRepository = accountRepository;

  final MockDataSource _mockDataSource;
  final AccountRepository _accountRepository;

  @override
  String toString() {
    return '$runtimeType()';
  }

  @override
  Stream<Result<List<CreditCardEntity>>> watchAllCreditCards() async* {
    Result<List<CreditCardEntity>> onData(List<CreditCardEntity> cards) {
      return Result.ok(cards);
    }

    try {
      await Future.delayed(const Duration(seconds: 1));

      final cardData = await _mockDataSource.getCreditCardData();
      yield onData(cardData);

      final stream = _mockDataSource.creditCardDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(CreditCardUnknownException());
    }
  }

  @override
  Stream<Result<CreditCardEntity>> watchCreditCardById(String cardId) async* {
    Result<CreditCardEntity> onData(List<CreditCardEntity> cards) {
      final card = cards.where((existingCard) {
        return existingCard.id == cardId;
      }).firstOrNull;
      if (card == null) {
        return Result.error(CreditCardNotFoundException(cardId));
      }
      return Result.ok(card);
    }

    try {
      await Future.delayed(const Duration(seconds: 1));

      final cardData = await _mockDataSource.getCreditCardData();
      yield onData(cardData);

      final stream = _mockDataSource.creditCardDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(CreditCardUnknownException());
    }
  }

  @override
  Future<Result<CreditCardEntity>> createCreditCard({
    required CardType cardType,
    required String cardColor,
    required String cardHolderName,
    required String cardNumber,
    required DateTime expiryDate,
    required String cvv,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final cards = await _mockDataSource.getCreditCardData();

      final createAccountResult = await _accountRepository.createAccount(
        accountName: "$cardHolderName's Credit Card",
        type: AccountType.credit,
        currency: "USD",
      );
      if (createAccountResult case Error(:final error)) {
        return Result.error(error);
      }
      final account = createAccountResult.data!;

      final now = DateTime.now();
      final card = CreditCardMockModel(
        id: UniqueKey().toString(),
        createdAt: now,
        updatedAt: now,
        cardType: cardType,
        cardColor: Color(int.parse(cardColor)),
        cardHolderName: cardHolderName,
        cardNumber: cardNumber,
        expiryDate: expiryDate,
        cvv: cvv,
        isActive: true,
        account: AccountMockModel.fromAccountEntity(account)!,
      );
      cards.add(card);
      _mockDataSource.creditCardDataController.add(cards);

      return Result.ok(card);
    } catch (e) {
      return Result.error(CreditCardUnknownException());
    }
  }

  @override
  Future<Result<CreditCardEntity>> updateCreditCard(
    String cardId, {
    required CardType? cardType,
    required String? cardColor,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      final cards = await _mockDataSource.getCreditCardData();
      final index = cards.indexWhere(
        (existingCard) => existingCard.id == cardId,
      );
      if (index == -1) {
        return Result.error(CreditCardNotFoundException(cardId));
      }
      final now = DateTime.now();

      CreditCardEntity card = cards[index];
      card = card.copyWith(
        cardType: cardType,
        cardColor: cardColor != null
            ? Color(int.parse(cardColor))
            : card.cardColor,
        updatedAt: now,
      );

      cards[index] = card;
      _mockDataSource.creditCardDataController.add(cards);
      return Result.ok(card);
    } catch (e) {
      return Result.error(CreditCardUnknownException());
    }
  }

  @override
  Future<Result<void>> deleteCreditCard(String cardId) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      final cards = await _mockDataSource.getCreditCardData();
      final index = cards.indexWhere(
        (existingCard) => existingCard.id == cardId,
      );
      if (index == -1) {
        return Result.error(AccountNotFoundException(cardId));
      }
      cards.removeAt(index);
      _mockDataSource.creditCardDataController.add(cards);
      return Result.ok(null);
    } catch (e) {
      return Result.error(CreditCardUnknownException());
    }
  }

  @override
  Stream<Result<List<CreditCardEntity>>> watchActiveCreditCards() async* {
    Result<List<CreditCardEntity>> onData(List<CreditCardEntity> cards) {
      final activeCards = List.of(
        cards.where((card) {
          return card.isActive;
        }),
        growable: false,
      );
      return Result.ok(activeCards);
    }

    try {
      await Future.delayed(const Duration(seconds: 1));

      final cardData = await _mockDataSource.getCreditCardData();
      yield onData(cardData);

      final stream = _mockDataSource.creditCardDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(CreditCardUnknownException());
    }
  }
}
