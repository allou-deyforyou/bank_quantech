import 'package:sembast/sembast.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class TransactionCategoryLocalRepositorySembastImpl
    implements TransactionCategoryLocalRepository {
  TransactionCategoryLocalRepositorySembastImpl({
    required SembastDataSource sembastDataSource,
  }) : _sembastDataSource = sembastDataSource;

  final SembastDataSource _sembastDataSource;

  @override
  String toString() {
    return '$runtimeType()';
  }

  @override
  Future<Result<void>> saveCategories(
    List<TransactionCategoryEntity> categories,
  ) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      await db.transaction((tn) async {
        final data =
            TransactionCategorySembastModel.fromTransactionCategoryEntities(
              categories,
            )!;

        for (var category in data) {
          final finder = Finder(filter: Filter.byKey(category.id));
          final existingRecord = await TransactionCategorySembastModel.box
              .findFirst(db, finder: finder);
          if (existingRecord != null) {
            await TransactionCategorySembastModel.box.update(
              db,
              category.toMap(),
              finder: finder,
            );
          } else {
            await TransactionCategorySembastModel.box.add(db, category.toMap());
          }
        }
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(CategoryUnknownException());
    }
  }

  @override
  Future<Result<void>> updateCategory(
    TransactionCategoryEntity category,
  ) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(filter: Filter.byKey(category.id));
      await db.transaction((tn) async {
        final data =
            TransactionCategorySembastModel.fromTransactionCategoryEntity(
              category,
            )!;
        await TransactionCategorySembastModel.box.update(
          db,
          data.toMap(),
          finder: finder,
        );
        return data;
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(CategoryUnknownException());
    }
  }

  @override
  Future<Result<void>> deleteCategory(String categoryId) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      await db.transaction((tn) async {
        final finder = Finder(filter: Filter.byKey(categoryId));
        return TransactionCategorySembastModel.box.delete(tn, finder: finder);
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(CategoryUnknownException());
    }
  }

  @override
  Stream<Result<List<TransactionCategoryEntity>>> watchAllCategories() async* {
    Result<List<TransactionCategoryEntity>> onData(
      List<TransactionCategoryEntity> accounts,
    ) {
      return Result.ok(accounts);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        sortOrders: [
          SortOrder(TransactionCategorySembastModel.createdAtKey, false),
        ],
      );
      final build = TransactionCategorySembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final accounts = List<TransactionCategoryEntity>.from(
          snapshot.values.map((data) {
            final account = TransactionCategorySembastModel.fromMap(data)!;
            return account;
          }),
        );
        return accounts;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(CategoryUnknownException());
    }
  }

  @override
  Stream<Result<TransactionCategoryEntity>> watchCategoryById(
    String categoryId,
  ) async* {
    Result<TransactionCategoryEntity> onData(
      List<TransactionCategoryEntity> categories,
    ) {
      final category = categories.where((existingCategory) {
        return existingCategory.id == categoryId;
      }).firstOrNull;
      if (category == null) {
        return Result.error(TransactionCategoryNotFoundException(categoryId));
      }
      return Result.ok(category);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        filter: Filter.equals(
          TransactionCategorySembastModel.idKey,
          categoryId,
        ),
      );
      final build = TransactionCategorySembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final accounts = List<TransactionCategoryEntity>.from(
          snapshot.values.map((data) {
            final account = TransactionCategorySembastModel.fromMap(data)!;
            return account;
          }),
        );
        return accounts;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(CategoryUnknownException());
    }
  }
}
