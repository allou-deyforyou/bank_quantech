import 'package:flutter/foundation.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class AccountRepositoryMockImpl implements AccountRepository {
  AccountRepositoryMockImpl({required MockDataSource mockDataSource})
    : _mockDataSource = mockDataSource;

  final MockDataSource _mockDataSource;

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
      await Future.delayed(const Duration(seconds: 1));

      final accountData = await _mockDataSource.getAccountData();
      yield onData(accountData);

      final stream = _mockDataSource.accountDataController.stream;
      yield* stream.map(onData);
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
      await Future.delayed(const Duration(seconds: 1));

      final accountData = await _mockDataSource.getAccountData();
      yield onData(accountData);

      final stream = _mockDataSource.accountDataController.stream;
      yield* stream.map(onData);
    } catch (e) {
      yield Result.error(AccountUnknownException());
    }
  }

  @override
  Future<Result<AccountEntity>> createAccount({
    required String accountName,
    required AccountType type,
    required String currency,
    double initialBalance = 0.0,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final accounts = await _mockDataSource.getAccountData();

      final now = DateTime.now();
      final account = AccountMockModel(
        id: UniqueKey().toString(),
        createdAt: now,
        updatedAt: now,
        accountName: accountName,
        type: type,
        accountNumber: 'ACCT-${accounts.length + 1}',
        balance: initialBalance,
        currency: currency,
        isActive: true,
      );
      accounts.add(account);
      _mockDataSource.accountDataController.add(accounts);

      return Result.ok(account);
    } catch (e) {
      return Result.error(AccountUnknownException());
    }
  }

  @override
  Future<Result<void>> deleteAccount(String accountId) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      final accounts = await _mockDataSource.getAccountData();
      final index = accounts.indexWhere(
        (existingAccount) => existingAccount.id == accountId,
      );
      if (index == -1) {
        return Result.error(AccountNotFoundException(accountId));
      }
      accounts.removeAt(index);
      _mockDataSource.accountDataController.add(accounts);
      return Result.ok(null);
    } catch (e) {
      return Result.error(AccountUnknownException());
    }
  }

  @override
  Future<Result<AccountEntity>> updateAccountBalance({
    required String accountId,
    required double amount,
    required bool isCredit,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      final accounts = await _mockDataSource.getAccountData();
      final index = accounts.indexWhere(
        (existingAccount) => existingAccount.id == accountId,
      );
      if (index == -1) {
        return Result.error(AccountNotFoundException(accountId));
      }
      final now = DateTime.now();

      AccountEntity account = accounts[index];
      account = account.copyWith(
        balance: isCredit ? account.balance + amount : account.balance - amount,
        updatedAt: now,
      );

      accounts[index] = account;
      _mockDataSource.accountDataController.add(accounts);
      return Result.ok(account);
    } catch (e) {
      return Result.error(AccountUnknownException());
    }
  }
}
