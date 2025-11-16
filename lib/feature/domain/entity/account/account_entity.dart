enum AccountType { checking, savings, credit }

class AccountEntity {
  const AccountEntity({
    required this.id,
    required this.userId,
    required this.accountNumber,
    required this.accountName,
    required this.type,
    required this.balance,
    required this.currency,
    required this.createdAt,
    required this.isActive,
  });

  final String id;
  final String userId;
  final String accountNumber;
  final String accountName;
  final AccountType type;
  final double balance;
  final String currency;
  final DateTime createdAt;
  final bool isActive;

  AccountEntity copyWith({
    String? id,
    String? userId,
    String? accountNumber,
    String? accountName,
    AccountType? type,
    double? balance,
    String? currency,
    DateTime? createdAt,
    bool? isActive,
  }) {
    return AccountEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      accountNumber: accountNumber ?? this.accountNumber,
      accountName: accountName ?? this.accountName,
      type: type ?? this.type,
      balance: balance ?? this.balance,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
      isActive: isActive ?? this.isActive,
    );
  }

  AccountEntity clone() {
    return AccountEntity(
      id: id,
      userId: userId,
      accountNumber: accountNumber,
      accountName: accountName,
      type: type,
      balance: balance,
      currency: currency,
      createdAt: createdAt,
      isActive: isActive,
    );
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      userId,
      accountNumber,
      accountName,
      type,
      balance,
      currency,
      createdAt,
      isActive,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AccountEntity &&
        other.id == id &&
        other.userId == userId &&
        other.accountNumber == accountNumber &&
        other.accountName == accountName &&
        other.type == type &&
        other.balance == balance &&
        other.currency == currency &&
        other.createdAt == createdAt &&
        other.isActive == isActive;
  }

  @override
  String toString() {
    return '$runtimeType('
        'id: $id,'
        'userId: $userId, accountNumber: $accountNumber,'
        'accountName: $accountName,'
        'type: $type,'
        'balance: $balance,'
        'currency: $currency,'
        'createdAt: $createdAt,'
        'isActive: $isActive'
        ')';
  }
}
