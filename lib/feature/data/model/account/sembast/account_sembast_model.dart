import 'dart:convert';

import 'package:sembast/sembast.dart';

import 'package:bank_quantech/feature/feature.dart';

class AccountSembastModel extends AccountEntity {
  const AccountSembastModel({
    required super.id,
    required super.accountNumber,
    required super.accountName,
    required super.type,
    required super.balance,
    required super.currency,
    required super.isActive,
    required super.createdAt,
    required super.updatedAt,
  });

  static const String model = 'account';

  static const String idKey = 'id';

  static const String accountNumberKey = 'account_number';
  static const String accountNameKey = 'account_name';
  static const String typeKey = 'type';
  static const String balanceKey = 'balance';
  static const String currencyKey = 'currency';
  static const String isActiveKey = 'is_active';

  static const String createdAtKey = 'created_at';
  static const String updatedAtKey = 'updated_at';

  static final box = intMapStoreFactory.store(model);

  static AccountSembastModel? fromAccountEntity(AccountEntity? entity) {
    if (entity == null) return null;
    return AccountSembastModel(
      id: entity.id,
      accountNumber: entity.accountNumber,
      accountName: entity.accountName,
      type: entity.type,
      balance: entity.balance,
      currency: entity.currency,
      isActive: entity.isActive,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static List<AccountSembastModel>? fromAccountEntities(
    List<AccountEntity>? entities,
  ) {
    if (entities == null) return null;
    return List<AccountSembastModel>.from(
      entities.map(AccountSembastModel.fromAccountEntity),
    );
  }

  static AccountSembastModel? fromMap(dynamic map) {
    if (map == null) return null;
    return AccountSembastModel(
      id: map[idKey],
      accountNumber: map[accountNumberKey],
      accountName: map[accountNameKey],
      type: AccountTypeSembastExt.fromString(map[typeKey])!,
      balance: map[balanceKey].toDouble(),
      currency: map[currencyKey],
      isActive: map[isActiveKey],
      createdAt: DateTime.parse(map[createdAtKey].toString()),
      updatedAt: DateTime.tryParse(map[updatedAtKey].toString()),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      idKey: id,
      accountNumberKey: accountNumber,
      accountNameKey: accountName,
      typeKey: type.name,
      balanceKey: balance,
      currencyKey: currency,
      isActiveKey: isActive,
      createdAtKey: createdAt.toIso8601String(),
      updatedAtKey: updatedAt?.toIso8601String(),
    }..removeWhere((key, value) => value == null);
  }

  static AccountSembastModel fromJson(String source) {
    return fromMap(jsonDecode(source))!;
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  static List<AccountSembastModel>? fromListMap(dynamic data) {
    if (data == null) return null;
    return List<AccountSembastModel>.from(
      data.map<AccountSembastModel?>(AccountSembastModel.fromMap),
    );
  }

  static List<Map<String, dynamic>>? toListMap(
    List<AccountSembastModel>? data,
  ) {
    if (data == null) return null;
    return List.of(data.map((item) => item.toMap()));
  }

  static List<AccountSembastModel> fromListJson(String source) {
    return fromListMap(jsonDecode(source))!;
  }

  static String toListJson(List<AccountSembastModel> data) {
    return jsonEncode(toListMap(data));
  }
}

extension AccountTypeSembastExt on AccountType {
  static AccountType? fromString(String? type) {
    switch (type) {
      case 'savings':
        return AccountType.savings;
      case 'checking':
        return AccountType.checking;
      case 'credit':
        return AccountType.credit;
      case 'loan':
        return AccountType.loan;
      default:
        return null;
    }
  }

  // @override
  // String toString() {
  //   return name;
  // }
}
