import 'dart:convert';

import 'package:bank_quantech/feature/feature.dart';

class TransactionMockModel extends TransactionEntity {
  const TransactionMockModel({
    required super.id,
    required this.account,
    required this.card,
    required super.amount,
    required super.type,
    required this.category,
    required super.description,
    required super.merchantName,
    required super.transactionDate,
    required super.status,
    required super.reference,
    required super.createdAt,
    required super.updatedAt,
  }) : super(account: account, card: card, category: category);

  static const String model = 'transaction';

  static const String idKey = 'id';
  static const String createdAtKey = 'created_at';
  static const String updatedAtKey = 'updated_at';

  static const String amountKey = 'amount';
  static const String typeKey = 'type';
  static const String categoryKey = 'category';
  static const String descriptionKey = 'description';
  static const String merchantNameKey = 'merchant_name';
  static const String transactionDateKey = 'transaction_date';
  static const String statusKey = 'status';
  static const String referenceKey = 'reference';

  static const String accountIdKey = 'account_id';
  static const String cardIdKey = 'card_id';

  static TransactionMockModel? fromTransactionEntity(
    TransactionEntity? entity,
  ) {
    if (entity == null) return null;
    return TransactionMockModel(
      id: entity.id,
      account: AccountMockModel.fromAccountEntity(entity.account),
      card: CreditCardMockModel.fromCreditCardEntity(entity.card),
      amount: entity.amount,
      type: entity.type,
      category: TransactionCategoryMockModel.fromTransactionCategoryEntity(
        entity.category,
      ),
      description: entity.description,
      merchantName: entity.merchantName,
      transactionDate: entity.transactionDate,
      status: entity.status,
      reference: entity.reference,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static List<TransactionEntity>? fromTransactionEntities(
    List<TransactionEntity>? entities,
  ) {
    if (entities == null) return null;
    return List<TransactionMockModel>.from(
      entities.map(TransactionMockModel.fromTransactionEntity),
    );
  }

  static TransactionMockModel? fromMap(dynamic map) {
    if (map == null) return null;
    return TransactionMockModel(
      id: map[idKey],
      createdAt: DateTime.parse(map[createdAtKey].toString()),
      updatedAt: DateTime.parse(map[updatedAtKey].toString()),
      amount: map[amountKey],
      type: TransactionTypeMockExt.fromString(map[typeKey])!,
      category: TransactionCategoryMockModel.fromMap(map[categoryKey]),
      description: map[descriptionKey],
      merchantName: map[merchantNameKey],
      transactionDate: DateTime.parse(map[transactionDateKey].toString()),
      status: TransactionStatusMockExt.fromString(map[statusKey])!,
      reference: map[referenceKey],
      account: AccountMockModel.fromMap(map[accountIdKey]),
      card: CreditCardMockModel.fromMap(map[cardIdKey]),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      idKey: id,
      createdAtKey: createdAt.toIso8601String(),
      updatedAtKey: updatedAt.toIso8601String(),
      amountKey: amount,
      typeKey: type.name,
      categoryKey: category,
      descriptionKey: description,
      merchantNameKey: merchantName,
      transactionDateKey: transactionDate.toIso8601String(),
      statusKey: status.name,
      referenceKey: reference,
      accountIdKey: account?.id,
      cardIdKey: card?.id,
    }..removeWhere((key, value) => value == null);
  }

  static TransactionMockModel fromJson(String source) {
    return fromMap(jsonDecode(source))!;
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  static List<TransactionMockModel>? fromListMap(dynamic data) {
    if (data == null) return null;
    return List<TransactionMockModel>.from(
      data.map<TransactionMockModel?>(TransactionMockModel.fromMap),
    );
  }

  static List<Map<String, dynamic>>? toListMap(
    List<TransactionMockModel>? data,
  ) {
    if (data == null) return null;
    return List.of(data.map((item) => item.toMap()));
  }

  static List<TransactionMockModel> fromListJson(String source) {
    return fromListMap(jsonDecode(source))!;
  }

  static String toListJson(List<TransactionMockModel> data) {
    return jsonEncode(toListMap(data));
  }

  @override
  // ignore: overridden_fields
  final TransactionCategoryMockModel? category;

  @override
  // ignore: overridden_fields
  final AccountMockModel? account;

  @override
  // ignore: overridden_fields
  final CreditCardMockModel? card;
}

extension TransactionTypeMockExt on TransactionType {
  static TransactionType? fromString(String? type) {
    switch (type) {
      case 'debit':
        return TransactionType.debit;
      case 'credit':
        return TransactionType.credit;
      case 'transfer':
        return TransactionType.transfer;
      default:
        return null;
    }
  }
}

extension TransactionStatusMockExt on TransactionStatus {
  static TransactionStatus? fromString(String? status) {
    switch (status) {
      case 'pending':
        return TransactionStatus.pending;
      case 'completed':
        return TransactionStatus.completed;
      case 'failed':
        return TransactionStatus.failed;
      case 'cancelled':
        return TransactionStatus.cancelled;
      default:
        return null;
    }
  }
}
