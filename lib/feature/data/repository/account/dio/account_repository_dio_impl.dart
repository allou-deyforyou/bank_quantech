import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class AccountRepositoryDioImpl implements AccountRepository {
  AccountRepositoryDioImpl({required DioDataSource dioDataSource})
    : _dioDataSource = dioDataSource;

  final DioDataSource _dioDataSource;

  void toDelete() {
    var _ = _dioDataSource;
  }

  @override
  String toString() {
    return '$runtimeType()';
  }

  @override
  Stream<Result<List<AccountEntity>>> watchAllAccounts() async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Stream<Result<AccountEntity>> watchAccountById(String accountId) async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Future<Result<AccountEntity>> createAccount({
    required String accountName,
    required AccountType type,
    required String currency,
    double initialBalance = 0.0,
  }) async {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Future<Result<void>> deleteAccount(String accountId) async {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Future<Result<AccountEntity>> updateAccountBalance({
    required String accountId,
    required double amount,
    required bool isCredit,
  }) async {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }
}
