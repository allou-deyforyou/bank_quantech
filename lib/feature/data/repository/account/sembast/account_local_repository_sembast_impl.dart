import 'package:sembast/sembast.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class AccountLocalRepositorySembastImpl
    implements AccountLocalRepository {
  AccountLocalRepositorySembastImpl({
    required SembastDataSource sembastDataSource,
  }) : _sembastDataSource = sembastDataSource;

  final SembastDataSource _sembastDataSource;

  @override
  String toString() {
    return '$runtimeType()';
  }

  @override
  Stream<Result<List<AccountEntity>>> watchAllAccounts() async* {
    Result<List<AccountEntity>> onData(List<AccountEntity> accounts) {
      return Result.ok(accounts);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        sortOrders: [SortOrder(AccountSembastModel.createdAtKey, false)],
      );
      final build = AccountSembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final accounts = List<AccountEntity>.from(
          snapshot.values.map((data) {
            final account = AccountSembastModel.fromMap(data)!;
            return account;
          }),
        );
        return accounts;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(AccountUnknownException());
    }
  }

  @override
  Stream<Result<AccountEntity>> watchAccountById(String accountId) async* {
    Result<AccountEntity> onData(List<AccountEntity> accounts) {
      final account = accounts.where((existingAccount) {
        return existingAccount.id == accountId;
      }).firstOrNull;
      if (account == null) {
        return Result.error(AccountNotFoundException(accountId));
      }
      return Result.ok(account);
    }

    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(
        filter: Filter.equals(AccountSembastModel.idKey, accountId),
      );
      final build = AccountSembastModel.box.query(finder: finder);
      final data = build.onSnapshots(db).map((snapshot) {
        final accounts = List<AccountEntity>.from(
          snapshot.values.map((data) {
            final account = AccountSembastModel.fromMap(data)!;
            return account;
          }),
        );
        return accounts;
      });
      yield* data.map(onData);
    } catch (e) {
      yield Result.error(AccountUnknownException());
    }
  }

  @override
  Future<Result<void>> saveAccount(AccountEntity account) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      await db.transaction((tn) async {
        final data = AccountSembastModel.fromAccountEntity(account)!;
        await AccountSembastModel.box.add(tn, data.toMap());
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(AccountUnknownException());
    }
  }

  @override
  Future<Result<void>> updateAccount(AccountEntity account) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      final finder = Finder(filter: Filter.byKey(account.id));
      await db.transaction((tn) async {
        final data = AccountSembastModel.fromAccountEntity(account)!;
        await AccountSembastModel.box.update(db, data.toMap(), finder: finder);
        return data;
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(AccountUnknownException());
    }
  }

  @override
  Future<Result<void>> deleteAccount(String accountId) async {
    try {
      final db = await _sembastDataSource.getDatabaseInstance();
      await db.transaction((tn) async {
        final finder = Finder(filter: Filter.byKey(accountId));
        return AccountSembastModel.box.delete(tn, finder: finder);
      });
      return Result.ok(null);
    } catch (e) {
      return Result.error(AccountUnknownException());
    }
  }
}
