import 'package:sembast/sembast.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class CreditCardLocalRepositorySembastImpl
    implements CreditCardLocalRepository {
  CreditCardLocalRepositorySembastImpl({
    required SembastDataSource sembastDataSource,
  }) : _sembastDataSource = sembastDataSource;

  final SembastDataSource _sembastDataSource;

  @override
  String toString() {
    return '$runtimeType()';
  }

  @override
  Future<Result<void>> saveCreditCards(List<CreditCardEntity> cards) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      await db.transaction((tn) async {
        final data = CreditCardSembastModel.fromCreditCardEntities(cards)!;
        final accounts = List.of(
          data.expand((element) {
            return [element.account].nonNulls;
          }),
        );
        final accountValues = AccountSembastModel.toListMap(accounts)!;
        await AccountSembastModel.box.addAll(tn, accountValues);

        final values = CreditCardSembastModel.toListMap(data)!;
        return await CreditCardSembastModel.box.addAll(tn, values);
      });

      return Result.ok(null);
    } catch (e) {
      return Result.error(CreditCardUnknownException());
    }
  }

  @override
  Future<Result<void>> updateCreditCard(CreditCardEntity account) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(filter: Filter.byKey(account.id));
      await db.transaction((tn) async {
        final data = CreditCardSembastModel.fromCreditCardEntity(account)!;
        await CreditCardSembastModel.box.update(
          db,
          data.toMap(),
          finder: finder,
        );
        return data;
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(CreditCardUnknownException());
    }
  }

  @override
  Future<Result<void>> deleteCreditCard(String accountId) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      await db.transaction((tn) async {
        final finder = Finder(filter: Filter.byKey(accountId));
        return CreditCardSembastModel.box.delete(tn, finder: finder);
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(CreditCardUnknownException());
    }
  }

  @override
  Stream<Result<List<CreditCardEntity>>> watchAllCreditCards() async* {
    Result<List<CreditCardEntity>> onData(List<CreditCardEntity> cards) {
      return Result.ok(cards);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        sortOrders: [SortOrder(CreditCardSembastModel.createdAtKey, false)],
      );
      final build = CreditCardSembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final cards = List<CreditCardEntity>.from(
          snapshot.values.map((data) {
            final card = CreditCardSembastModel.fromMap(data)!;
            return card.copyWith(
              account: CreditCardSembastModel.accountFromStore(data, tn: db),
            );
          }),
        );
        return cards;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(CreditCardUnknownException());
    }
  }

  @override
  Stream<Result<CreditCardEntity>> watchCreditCardById(String cardId) async* {
    Result<CreditCardEntity> onData(List<CreditCardEntity> cards) {
      final card = cards.where((existingCreditCard) {
        return existingCreditCard.id == cardId;
      }).firstOrNull;
      if (card == null) {
        return Result.error(CreditCardNotFoundException(cardId));
      }
      return Result.ok(card);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        filter: Filter.equals(CreditCardSembastModel.idKey, cardId),
      );
      final build = CreditCardSembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final cards = List<CreditCardEntity>.from(
          snapshot.values.map((data) {
            final card = CreditCardSembastModel.fromMap(data)!;
            return card.copyWith(
              account: CreditCardSembastModel.accountFromStore(data, tn: db),
            );
          }),
        );
        return cards;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(CreditCardUnknownException());
    }
  }

  @override
  Stream<Result<List<CreditCardEntity>>> watchActiveCreditCards() async* {
    Result<List<CreditCardEntity>> onData(List<CreditCardEntity> cards) {
      return Result.ok(cards);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        filter: Filter.equals(CreditCardSembastModel.isActiveKey, true),
        sortOrders: [SortOrder(CreditCardSembastModel.createdAtKey, false)],
      );
      final build = CreditCardSembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final cards = List<CreditCardEntity>.from(
          snapshot.values.map((data) {
            final card = CreditCardSembastModel.fromMap(data)!;
            return card;
          }),
        );
        return cards;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(CreditCardUnknownException());
    }
  }
}
