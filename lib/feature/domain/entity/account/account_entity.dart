enum AccountType { checking, savings, credit, loan }

class AccountEntity {
  const AccountEntity({
    required this.id,
    required this.accountNumber,
    required this.accountName,
    required this.type,
    required this.balance,
    required this.currency,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String accountNumber;
  final String accountName;
  final AccountType type;
  final double balance;
  final String currency;
  final bool isActive;

  final DateTime createdAt;
  final DateTime? updatedAt;

  AccountEntity copyWith({
    String? id,
    String? accountNumber,
    String? accountName,
    AccountType? type,
    double? balance,
    String? currency,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return AccountEntity(
      id: id ?? this.id,
      accountNumber: accountNumber ?? this.accountNumber,
      accountName: accountName ?? this.accountName,
      type: type ?? this.type,
      balance: balance ?? this.balance,
      currency: currency ?? this.currency,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  AccountEntity clone() {
    return AccountEntity(
      id: id,
      accountNumber: accountNumber,
      accountName: accountName,
      type: type,
      balance: balance,
      currency: currency,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      accountNumber,
      accountName,
      type,
      balance,
      currency,
      isActive,
      createdAt,
      updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AccountEntity &&
        other.id == id &&
        other.accountNumber == accountNumber &&
        other.accountName == accountName &&
        other.type == type &&
        other.balance == balance &&
        other.currency == currency &&
        other.isActive == isActive &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  String toString() {
    return '$runtimeType('
        'id: $id,'
        'accountName: $accountName,'
        'type: $type,'
        'balance: $balance,'
        'currency: $currency,'
        'isActive: $isActive'
        'createdAt: $createdAt,'
        'updatedAt: $updatedAt'
        ')';
  }
}
