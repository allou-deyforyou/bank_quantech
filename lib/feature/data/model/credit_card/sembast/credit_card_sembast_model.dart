import 'dart:ui';
import 'dart:convert';

import 'package:sembast/sembast.dart';

import 'package:bank_quantech/feature/feature.dart';

class CreditCardSembastModel extends CreditCardEntity {
  const CreditCardSembastModel({
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
  }) : super(account: account);

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

  static AccountSembastModel? accountFromStore(
    dynamic data, {
    required DatabaseClient tn,
  }) {
    return AccountSembastModel.fromMap(
      AccountSembastModel.box.findFirstSync(
        finder: Finder(
          filter: Filter.equals(AccountSembastModel.idKey, data[accountIdKey]),
        ),
        tn,
      ),
    );
  }

  static final box = intMapStoreFactory.store(model);

  static CreditCardSembastModel? fromCreditCardEntity(
    CreditCardEntity? entity,
  ) {
    if (entity == null) return null;
    return CreditCardSembastModel(
      id: entity.id,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      cardType: entity.cardType,
      cardNumber: entity.cardNumber,
      cardHolderName: entity.cardHolderName,
      cardColor: entity.cardColor,
      expiryDate: entity.expiryDate,
      cvv: entity.cvv,
      isActive: entity.isActive,
      account: AccountSembastModel.fromAccountEntity(entity.account)!,
    );
  }

  static List<CreditCardSembastModel>? fromCreditCardEntities(
    List<CreditCardEntity>? entities,
  ) {
    if (entities == null) return null;
    return List<CreditCardSembastModel>.from(
      entities.map(CreditCardSembastModel.fromCreditCardEntity),
    );
  }

  static CreditCardSembastModel? fromMap(dynamic map) {
    if (map == null) return null;
    return CreditCardSembastModel(
      id: map[idKey],
      createdAt: DateTime.parse(map[createdAtKey].toString()),
      updatedAt: DateTime.parse(map[updatedAtKey].toString()),
      cardType: CardTypeSembastExt.fromString(map[cardTypeKey])!,
      cardNumber: map[cardNumberKey],
      cardHolderName: map[cardHolderNameKey],
      cardColor: Color(int.parse(map[cardColorKey])),
      expiryDate: DateTime.parse(map[expiryDateKey].toString()),
      cvv: map[cvvKey],
      isActive: map[isActiveKey],
      account: null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      idKey: id,
      createdAtKey: createdAt.toIso8601String(),
      updatedAtKey: updatedAt.toIso8601String(),
      cardTypeKey: cardType.name,
      cardNumberKey: cardNumber,
      cardHolderNameKey: cardHolderName,
      cardColorKey: cardColor.toARGB32().toString(),
      expiryDateKey: expiryDate.toIso8601String(),
      cvvKey: cvv,
      isActiveKey: isActive,
      accountIdKey: account?.id,
    }..removeWhere((key, value) => value == null);
  }

  static CreditCardSembastModel fromJson(String source) {
    return fromMap(jsonDecode(source))!;
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  static List<CreditCardSembastModel>? fromListMap(dynamic data) {
    if (data == null) return null;
    return List<CreditCardSembastModel>.from(
      data.map<CreditCardSembastModel?>(CreditCardSembastModel.fromMap),
    );
  }

  static List<Map<String, dynamic>>? toListMap(
    List<CreditCardSembastModel>? data,
  ) {
    if (data == null) return null;
    return List.of(data.map((item) => item.toMap()));
  }

  static List<CreditCardSembastModel> fromListJson(String source) {
    return fromListMap(jsonDecode(source))!;
  }

  static String toListJson(List<CreditCardSembastModel> data) {
    return jsonEncode(toListMap(data));
  }

  @override
  // ignore: overridden_fields
  final AccountSembastModel? account;
}

extension CardTypeSembastExt on CardType {
  static CardType? fromString(String? type) {
    switch (type) {
      case 'visa':
        return CardType.visa;
      default:
        return null;
    }
  }
}
