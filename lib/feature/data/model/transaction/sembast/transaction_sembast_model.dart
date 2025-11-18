import 'dart:convert';

import 'package:bank_quantech/feature/feature.dart';
import 'package:sembast/sembast.dart';

class TransactionSembastModel extends TransactionEntity {
  const TransactionSembastModel({
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
  }) : super(category: category, account: account, card: card);

  static const String model = 'transaction';

  static const String idKey = 'id';
  static const String createdAtKey = 'created_at';
  static const String updatedAtKey = 'updated_at';

  static const String amountKey = 'amount';
  static const String typeKey = 'type';
  static const String descriptionKey = 'description';
  static const String merchantNameKey = 'merchant_name';
  static const String transactionDateKey = 'transaction_date';
  static const String statusKey = 'status';
  static const String referenceKey = 'reference';

  static const String categoryIdKey = 'category_id';

  static const String accountIdKey = 'account_id';
  static const String cardIdKey = 'card_id';

  static final box = intMapStoreFactory.store(model);

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

  static CreditCardSembastModel? cardFromStore(
    dynamic data, {
    required DatabaseClient tn,
  }) {
    return CreditCardSembastModel.fromMap(
      CreditCardSembastModel.box.findFirstSync(
        finder: Finder(
          filter: Filter.equals(CreditCardSembastModel.idKey, data[cardIdKey]),
        ),
        tn,
      ),
    );
  }

  static TransactionSembastModel? fromTransactionEntity(
    TransactionEntity? entity,
  ) {
    if (entity == null) return null;
    return TransactionSembastModel(
      id: entity.id,
      account: AccountSembastModel.fromAccountEntity(entity.account),
      card: CreditCardSembastModel.fromCreditCardEntity(entity.card),
      amount: entity.amount,
      type: entity.type,
      category: TransactionCategorySembastModel.fromTransactionCategoryEntity(
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

  static List<TransactionSembastModel>? fromTransactionEntities(
    List<TransactionEntity>? entities,
  ) {
    if (entities == null) return null;
    return List<TransactionSembastModel>.from(
      entities.map(TransactionSembastModel.fromTransactionEntity),
    );
  }

  static TransactionSembastModel? fromMap(dynamic map) {
    if (map == null) return null;
    return TransactionSembastModel(
      id: map[idKey],
      createdAt: DateTime.parse(map[createdAtKey].toString()),
      updatedAt: DateTime.parse(map[updatedAtKey].toString()),
      amount: map[amountKey],
      type: TransactionTypeSembastExt.fromString(map[typeKey])!,
      category: null,
      description: map[descriptionKey],
      merchantName: map[merchantNameKey],
      transactionDate: DateTime.parse(map[transactionDateKey].toString()),
      status: TransactionStatusSembastExt.fromString(map[statusKey])!,
      reference: map[referenceKey],
      account: null,
      card: null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      idKey: id,
      createdAtKey: createdAt.toIso8601String(),
      updatedAtKey: updatedAt.toIso8601String(),
      amountKey: amount,
      typeKey: type.name,
      categoryIdKey: category?.id,
      descriptionKey: description,
      merchantNameKey: merchantName,
      transactionDateKey: transactionDate.toIso8601String(),
      statusKey: status.name,
      referenceKey: reference,
      accountIdKey: account?.id,
      cardIdKey: card?.id,
    }..removeWhere((key, value) => value == null);
  }

  static TransactionSembastModel fromJson(String source) {
    return fromMap(jsonDecode(source))!;
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  static List<TransactionSembastModel>? fromListMap(dynamic data) {
    if (data == null) return null;
    return List<TransactionSembastModel>.from(
      data.map<TransactionSembastModel?>(TransactionSembastModel.fromMap),
    );
  }

  static List<Map<String, dynamic>>? toListMap(
    List<TransactionSembastModel>? data,
  ) {
    if (data == null) return null;
    return List.of(data.map((item) => item.toMap()));
  }

  static List<TransactionSembastModel> fromListJson(String source) {
    return fromListMap(jsonDecode(source))!;
  }

  static String toListJson(List<TransactionSembastModel> data) {
    return jsonEncode(toListMap(data));
  }

  @override
  // ignore: overridden_fields
  final TransactionCategorySembastModel? category;

  @override
  // ignore: overridden_fields
  final AccountSembastModel? account;

  @override
  // ignore: overridden_fields
  final CreditCardSembastModel? card;
}

extension TransactionTypeSembastExt on TransactionType {
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

extension TransactionStatusSembastExt on TransactionStatus {
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
