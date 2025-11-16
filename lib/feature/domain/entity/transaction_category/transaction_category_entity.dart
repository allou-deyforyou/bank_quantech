import 'package:flutter/widgets.dart';

enum TransactionCategoryType { income, expense }

class TransactionCategoryEntity {
  const TransactionCategoryEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.color,
    required this.type,
    required this.isDefault,
  });

  final String id;
  final String name;
  final String description;
  final IconData icon;
  final Color color;
  final TransactionCategoryType type;
  final bool isDefault;

  TransactionCategoryEntity copyWith({
    String? id,
    String? name,
    String? description,
    IconData? icon,
    Color? color,
    TransactionCategoryType? type,
    bool? isDefault,
  }) {
    return TransactionCategoryEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      type: type ?? this.type,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  TransactionCategoryEntity clone() {
    return TransactionCategoryEntity(
      id: id,
      name: name,
      description: description,
      icon: icon,
      color: color,
      type: type,
      isDefault: isDefault,
    );
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      icon.hashCode ^
      color.hashCode ^
      type.hashCode ^
      isDefault.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TransactionCategoryEntity &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.icon == icon &&
        other.color == color &&
        other.type == type &&
        other.isDefault == isDefault;
  }

  @override
  String toString() {
    return '$runtimeType('
        'id: $id,'
        'name: $name,'
        'description: $description,'
        'icon: $icon,'
        'color: $color,'
        'type: $type,'
        'isDefault: $isDefault'
        ')';
  }
}
