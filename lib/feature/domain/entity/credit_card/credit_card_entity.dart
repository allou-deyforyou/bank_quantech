import 'package:flutter/widgets.dart';

enum CardType { visa }

class CreditCardEntity {
  const CreditCardEntity({
    required this.id,
    required this.accountId,
    required this.cardType,
    required this.cardNumber,
    required this.cardHolderName,
    required this.expiryDate,
    required this.cvv,
    required this.isActive,
    required this.cardColor,
    this.createdAt,
    this.updatedAt,
  });

  final String id;
  final String accountId;

  final CardType cardType;
  final String cardNumber; // masqué
  final String cardHolderName;
  final DateTime expiryDate;
  final String cvv; // chiffré
  final bool isActive;

  final Color cardColor;

  final DateTime? createdAt;
  final DateTime? updatedAt;

  CreditCardEntity copyWith({
    String? id,
    String? accountId,
    CardType? cardType,
    String? cardNumber,
    String? cardHolderName,
    DateTime? expiryDate,
    String? cvv,
    bool? isActive,
    Color? cardColor,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CreditCardEntity(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      cardType: cardType ?? this.cardType,
      cardNumber: cardNumber ?? this.cardNumber,
      cardHolderName: cardHolderName ?? this.cardHolderName,
      expiryDate: expiryDate ?? this.expiryDate,
      cvv: cvv ?? this.cvv,
      isActive: isActive ?? this.isActive,
      cardColor: cardColor ?? this.cardColor,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  CreditCardEntity clone() {
    return CreditCardEntity(
      id: id,
      accountId: accountId,
      cardType: cardType,
      cardNumber: cardNumber,
      cardHolderName: cardHolderName,
      expiryDate: expiryDate,
      cvv: cvv,
      cardColor: cardColor,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      accountId,
      cardType,
      cardNumber,
      cardHolderName,
      expiryDate,
      cvv,
      isActive,
      cardColor,
      createdAt,
      updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CreditCardEntity &&
        other.id == id &&
        other.accountId == accountId &&
        other.cardType == cardType &&
        other.cardNumber == cardNumber &&
        other.cardHolderName == cardHolderName &&
        other.expiryDate == expiryDate &&
        other.cvv == cvv &&
        other.isActive == isActive &&
        other.cardColor == cardColor &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  String toString() {
    return '$runtimeType('
        'id: $id,'
        'accountId: $accountId,'
        'cardType: $cardType,'
        'cardNumber: $cardNumber,'
        'cardHolderName: $cardHolderName,'
        'expiryDate: $expiryDate,'
        'cvv: $cvv,'
        'isActive: $isActive,'
        'cardColor: $cardColor,'
        'createdAt: $createdAt,'
        'updatedAt: $updatedAt'
        ')';
  }
}
