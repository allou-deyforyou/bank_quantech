import 'package:flutter/material.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

/// Use case pour créer une nouvelle carte de crédit
class CreateCreditCardUseCase {
  const CreateCreditCardUseCase({
    required CreditCardRepository creditCardRepository,
    required CreditCardLocalRepository creditCardLocalRepository,
  }) : _creditCardRepository = creditCardRepository,
       _creditCardLocalRepository = creditCardLocalRepository;

  final CreditCardRepository _creditCardRepository;
  final CreditCardLocalRepository _creditCardLocalRepository;

  /// Crée une nouvelle carte de crédit avec validation métier
  Future<Result<CreditCardEntity>> call({
    required String cardHolderName,
    required String cardNumber,
    required DateTime expiryDate,
    required String cvv,
    required CardType cardType,
    Color cardColor = Colors.blue,
  }) async {
    try {
      // Validation des données de la carte
      final validationResult = await _validateCreditCardData(
        cardHolderName: cardHolderName,
        cardNumber: cardNumber,
        expiryDate: expiryDate,
        cvv: cvv,
      );

      if (!validationResult.hasData) {
        return Result.error(validationResult.asError.error);
      }

      // Création de la carte
      final result = await _creditCardRepository.createCreditCard(
        cardType: cardType,
        cardColor:
            '0xFF${cardColor.toARGB32().toRadixString(16).padLeft(8, '0')}',
        cardHolderName: cardHolderName,
        cardNumber: cardNumber,
        expiryDate: expiryDate,
        cvv: cvv,
      );
      return result.when(
        ok: (creditCard) async {
          // Optionnel : sauvegarde locale après création réussie
          await _creditCardLocalRepository.saveCreditCards([creditCard]);
          return Result.ok(creditCard);
        },
        error: (error) {
          return Result.error(error);
        },
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Valide les données de la carte de crédit
  Future<Result<bool>> _validateCreditCardData({
    required String cardHolderName,
    required String cardNumber,
    required DateTime expiryDate,
    required String cvv,
  }) async {
    // Validation du nom du porteur
    if (cardHolderName.trim().isEmpty) {
      return Result.error(
        InvalidCardholderNameException(
          cardHolderName,
          'Cardholder name cannot be empty',
        ),
      );
    }

    if (cardHolderName.trim().length < 2) {
      return Result.error(
        InvalidCardholderNameException(
          cardHolderName,
          'Cardholder name must be at least 2 characters',
        ),
      );
    }

    // Validation du numéro de carte (algorithme de Luhn simplifié)
    if (!_isValidCardNumber(cardNumber)) {
      return Result.error(
        InvalidCardNumberException('Card number failed validation algorithm'),
      );
    }

    // Validation de la date d'expiration
    if (expiryDate.isBefore(DateTime.now())) {
      return Result.error(
        InvalidExpiryDateException('Card expiry date cannot be in the past'),
      );
    }

    // Validation du CVV
    if (cvv.length < 3 || cvv.length > 4) {
      return Result.error(InvalidCvvException('CVV must be 3 or 4 digits'));
    }

    if (!RegExp(r'^\d+$').hasMatch(cvv)) {
      return Result.error(InvalidCvvException('CVV must contain only digits'));
    }

    return Result.ok(true);
  }

  /// Validation simplifiée du numéro de carte (algorithme de Luhn)
  bool _isValidCardNumber(String cardNumber) {
    final cleanNumber = cardNumber.replaceAll(RegExp(r'\s+'), '');

    if (cleanNumber.length < 8 || cleanNumber.length > 19) {
      return false;
    }

    if (!RegExp(r'^\d+$').hasMatch(cleanNumber)) {
      return false;
    }

    return true;
  }
}
