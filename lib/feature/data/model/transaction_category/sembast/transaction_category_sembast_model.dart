import 'dart:convert';

import 'package:bank_quantech/feature/feature.dart';
import 'package:flutter/widgets.dart';
import 'package:sembast/sembast.dart';

class TransactionCategorySembastModel extends TransactionCategoryEntity {
  const TransactionCategorySembastModel({
    required super.id,
    required super.name,
    required super.description,
    required super.icon,
    required super.color,
    required super.type,
    required super.isDefault,
  });

  static const String model = 'transaction_category';

  static const String idKey = 'id';

  static const String nameKey = 'name';
  static const String descriptionKey = 'description';
  static const String iconKey = 'icon';
  static const String colorKey = 'color';
  static const String typeKey = 'type';
  static const String isDefaultKey = 'is_default';

  static const String createdAtKey = 'created_at';
  static const String updatedAtKey = 'updated_at';

  static final box = intMapStoreFactory.store(model);

  static TransactionCategorySembastModel? fromTransactionCategoryEntity(
    TransactionCategoryEntity? entity,
  ) {
    if (entity == null) return null;
    return TransactionCategorySembastModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      icon: entity.icon,
      color: entity.color,
      type: entity.type,
      isDefault: entity.isDefault,
    );
  }

  static List<TransactionCategorySembastModel>? fromTransactionCategoryEntities(
    List<TransactionCategoryEntity>? entities,
  ) {
    if (entities == null) return null;
    return List<TransactionCategorySembastModel>.from(
      entities.map(
        TransactionCategorySembastModel.fromTransactionCategoryEntity,
      ),
    );
  }

  static TransactionCategorySembastModel? fromMap(dynamic map) {
    if (map == null) return null;
    return TransactionCategorySembastModel(
      id: map[idKey],
      name: map[nameKey],
      description: map[descriptionKey],
      icon: IconData(map[iconKey], fontFamily: 'MaterialIcons'),
      color: Color(int.parse(map[colorKey])),
      type: TransactionCategoryTypeSembastExt.fromString(map[typeKey])!,
      isDefault: map[isDefaultKey],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      idKey: id,
      nameKey: name,
      descriptionKey: description,
      iconKey: icon.codePoint,
      colorKey: color.toARGB32().toString(),
      typeKey: type.name,
      isDefaultKey: isDefault,
    }..removeWhere((key, value) => value == null);
  }

  static TransactionCategorySembastModel fromJson(String source) {
    return fromMap(jsonDecode(source))!;
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  static List<TransactionCategorySembastModel>? fromListMap(dynamic data) {
    if (data == null) return null;
    return List<TransactionCategorySembastModel>.from(
      data.map<TransactionCategorySembastModel?>(
        TransactionCategorySembastModel.fromMap,
      ),
    );
  }

  static List<Map<String, dynamic>>? toListMap(
    List<TransactionCategorySembastModel>? data,
  ) {
    if (data == null) return null;
    return List.of(data.map((item) => item.toMap()));
  }

  static List<TransactionCategorySembastModel> fromListJson(String source) {
    return fromListMap(jsonDecode(source))!;
  }

  static String toListJson(List<TransactionCategorySembastModel> data) {
    return jsonEncode(toListMap(data));
  }
}

extension TransactionCategoryTypeSembastExt on TransactionCategoryType {
  static TransactionCategoryType? fromString(String? type) {
    switch (type) {
      case 'income':
        return TransactionCategoryType.income;
      case 'expense':
        return TransactionCategoryType.expense;
      default:
        return null;
    }
  }
}
