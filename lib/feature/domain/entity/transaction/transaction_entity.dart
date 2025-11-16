import 'package:bank_quantech/feature/feature.dart';

enum TransactionType { debit, credit, transfer }

enum TransactionStatus { pending, completed, failed, cancelled }

class TransactionEntity {
  const TransactionEntity({
    required this.id,
    required this.accountId,
    this.cardId,
    required this.amount,
    required this.type,
    required this.category,
    required this.description,
    this.merchantName,
    required this.transactionDate,
    required this.status,
    this.reference,
    this.createdAt,
    this.updatedAt,
  });

  final String id;

  final String accountId;
  final String? cardId;

  final double amount;
  final TransactionType type;
  final TransactionCategoryEntity category;
  final String description;
  final String? merchantName;
  final DateTime transactionDate;
  final TransactionStatus status;
  final String? reference;

  final DateTime? createdAt;
  final DateTime? updatedAt;

  TransactionEntity copyWith({
    String? id,
    String? accountId,
    String? cardId,
    double? amount,
    TransactionType? type,
    TransactionCategoryEntity? category,
    String? description,
    String? merchantName,
    DateTime? transactionDate,
    TransactionStatus? status,
    String? reference,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return TransactionEntity(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      cardId: cardId ?? this.cardId,
      amount: amount ?? this.amount,
      type: type ?? this.type,
      category: category ?? this.category,
      description: description ?? this.description,
      merchantName: merchantName ?? this.merchantName,
      transactionDate: transactionDate ?? this.transactionDate,
      status: status ?? this.status,
      reference: reference ?? this.reference,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  TransactionEntity clone() {
    return TransactionEntity(
      id: id,
      accountId: accountId,
      cardId: cardId,
      amount: amount,
      type: type,
      category: category,
      description: description,
      merchantName: merchantName,
      transactionDate: transactionDate,
      status: status,
      reference: reference,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  int get hashCode =>
      id.hashCode ^
      accountId.hashCode ^
      (cardId?.hashCode ?? 0) ^
      amount.hashCode ^
      type.hashCode ^
      category.hashCode ^
      description.hashCode ^
      (merchantName?.hashCode ?? 0) ^
      transactionDate.hashCode ^
      status.hashCode ^
      (reference?.hashCode ?? 0) ^
      (createdAt?.hashCode ?? 0) ^
      (updatedAt?.hashCode ?? 0);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TransactionEntity &&
        other.id == id &&
        other.accountId == accountId &&
        other.cardId == cardId &&
        other.amount == amount &&
        other.type == type &&
        other.category == category &&
        other.description == description &&
        other.merchantName == merchantName &&
        other.transactionDate == transactionDate &&
        other.status == status &&
        other.reference == reference &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  String toString() {
    return '$runtimeType('
        'id: $id,'
        'accountId: $accountId,'
        'cardId: $cardId,'
        'amount: $amount,'
        'type: $type,'
        'category: $category,'
        'description: $description,'
        'merchantName: $merchantName,'
        'transactionDate: $transactionDate,'
        'status: $status,'
        'reference: $reference,'
        'createdAt: $createdAt,'
        'updatedAt: $updatedAt'
        ')';
  }
}
