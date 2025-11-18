import 'package:bank_quantech/feature/feature.dart';

enum TransactionType { debit, credit, transfer }

enum TransactionStatus { pending, completed, failed, cancelled }

class TransactionEntity {
  const TransactionEntity({
    required this.id,
    required this.account,
    required this.card,
    required this.amount,
    required this.type,
    required this.category,
    required this.description,
    required this.merchantName,
    required this.transactionDate,
    required this.status,
    required this.reference,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;

  final double amount;
  final TransactionType type;
  final TransactionCategoryEntity? category;
  final String description;
  final String? merchantName;
  final DateTime transactionDate;
  final TransactionStatus status;
  final String? reference;

  final AccountEntity? account;
  final CreditCardEntity? card;

  TransactionEntity copyWith({
    String? id,
    AccountEntity? account,
    CreditCardEntity? card,
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
      account: account ?? this.account,
      card: card ?? this.card,
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
      account: account,
      card: card,
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
  int get hashCode => Object.hash(
    id,
    account?.id,
    card?.id,
    amount,
    type,
    category,
    description,
    merchantName,
    transactionDate,
    status,
    reference,
    createdAt,
    updatedAt,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TransactionEntity &&
        other.id == id &&
        other.account?.id == account?.id &&
        other.card?.id == card?.id &&
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
        'createdAt: $createdAt,'
        'updatedAt: $updatedAt,'
        'amount: $amount,'
        'type: $type,'
        'category: $category,'
        'description: $description,'
        'merchantName: $merchantName,'
        'transactionDate: $transactionDate,'
        'status: $status,'
        'reference: $reference,'
        ')';
  }
}
