import 'dart:ui';
import 'dart:convert';

import 'package:bank_quantech/feature/feature.dart';

class CreditCardMockModel extends CreditCardEntity {
  const CreditCardMockModel({
    required super.id,
    required super.createdAt,
    required super.updatedAt,
    required super.cardType,
    required super.cardNumber,
    required super.cardHolderName,
    required super.cardColor,
    required super.expiryDate,
    required super.cvv,
    required super.isActive,
    required this.account,
  });

  static const String model = 'credit_card';

  static const String idKey = 'id';
  static const String accountIdKey = 'account_id';

  static const String cardTypeKey = 'card_type';
  static const String cardNumberKey = 'card_number';
  static const String cardHolderNameKey = 'card_holder_name';
  static const String cardColorKey = 'card_color';
  static const String expiryDateKey = 'expiry_date';
  static const String cvvKey = 'cvv';
  static const String isActiveKey = 'is_active';

  static const String createdAtKey = 'created_at';
  static const String updatedAtKey = 'updated_at';

  static CreditCardMockModel? fromCreditCardEntity(CreditCardEntity? entity) {
    if (entity == null) return null;
    return CreditCardMockModel(
      id: entity.id,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      cardType: entity.cardType,
      cardColor: entity.cardColor,
      cardNumber: entity.cardNumber,
      cardHolderName: entity.cardHolderName,
      expiryDate: entity.expiryDate,
      cvv: entity.cvv,
      isActive: entity.isActive,
      account: AccountMockModel.fromAccountEntity(entity.account)!,
    );
  }

  static List<CreditCardEntity>? fromCreditCardEntities(
    List<CreditCardEntity>? entities,
  ) {
    if (entities == null) return null;
    return List<CreditCardMockModel>.from(
      entities.map(CreditCardMockModel.fromCreditCardEntity),
    );
  }

  static CreditCardMockModel? fromMap(dynamic map) {
    if (map == null) return null;
    return CreditCardMockModel(
      id: map[idKey],
      createdAt: DateTime.parse(map[createdAtKey].toString()),
      updatedAt: DateTime.parse(map[updatedAtKey].toString()),
      cardType: CardTypeMockExt.fromString(map[cardTypeKey])!,
      cardNumber: map[cardNumberKey],
      cardHolderName: map[cardHolderNameKey],
      cardColor: Color(int.parse(map[cardColorKey])),
      expiryDate: DateTime.parse(map[expiryDateKey].toString()),
      cvv: map[cvvKey],
      isActive: map[isActiveKey],
      account: AccountMockModel.fromMap(map[accountIdKey])!,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      idKey: id,
      createdAtKey: createdAt.toIso8601String(),
      updatedAtKey: updatedAt.toIso8601String(),
      cardTypeKey: cardType,
      cardNumberKey: cardNumber,
      cardHolderNameKey: cardHolderName,
      cardColorKey: cardColor.toARGB32().toString(),
      expiryDateKey: expiryDate,
      cvvKey: cvv,
      isActiveKey: isActive,
      accountIdKey: account.id,
    }..removeWhere((key, value) => value == null);
  }

  static CreditCardMockModel fromJson(String source) {
    return fromMap(jsonDecode(source))!;
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  static List<CreditCardMockModel>? fromListMap(dynamic data) {
    if (data == null) return null;
    return List<CreditCardMockModel>.from(
      data.map<CreditCardMockModel?>(CreditCardMockModel.fromMap),
    );
  }

  static List<Map<String, dynamic>>? toListMap(
    List<CreditCardMockModel>? data,
  ) {
    if (data == null) return null;
    return List.of(data.map((item) => item.toMap()));
  }

  static List<CreditCardMockModel> fromListJson(String source) {
    return fromListMap(jsonDecode(source))!;
  }

  static String toListJson(List<CreditCardMockModel> data) {
    return jsonEncode(toListMap(data));
  }

  @override
  // ignore: overridden_fields
  final AccountMockModel account;
}

extension CardTypeMockExt on CardType {
  static CardType? fromString(String? type) {
    switch (type) {
      case 'visa':
        return CardType.visa;
      default:
        return null;
    }
  }
}
