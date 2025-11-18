part of 'account_repository.dart';

abstract interface class AccountLocalRepository {
  const AccountLocalRepository();

  @override
  String toString() {
    return '$runtimeType()';
  }

  Stream<Result<List<AccountEntity>>> watchAllAccounts();

  Stream<Result<AccountEntity>> watchAccountById(String accountId);

  Future<Result<void>> saveAccount(AccountEntity account);

  Future<Result<void>> updateAccount(AccountEntity account);

  Future<Result<void>> deleteAccount(String accountId);
}
