import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

/// Use case pour créer une nouvelle transaction
class CreateTransactionUseCase {
  const CreateTransactionUseCase({
    required AccountRepository accountRepository,
    required TransactionCategoryRepository categoryRepository,
    required TransactionRepository transactionRepository,
    required TransactionLocalRepository transactionLocalRepository,
  }) : _transactionRepository = transactionRepository,
       _accountRepository = accountRepository,
       _transactionLocalRepository = transactionLocalRepository;

  final AccountRepository _accountRepository;
  final TransactionRepository _transactionRepository;
  final TransactionLocalRepository _transactionLocalRepository;

  /// Crée une nouvelle transaction avec validation métier
  Future<Result<TransactionEntity>> call({
    required String accountId,
    required double amount,
    required TransactionType type,
    required String categoryId,
    required String description,
    String? merchantName,
    DateTime? transactionDate,
  }) async {
    try {
      final validationResult = await _validateTransactionData(
        accountId: accountId,
        amount: amount,
        type: type,
        categoryId: categoryId,
        description: description,
        transactionDate: transactionDate,
      );

      if (!validationResult.hasData) {
        return Result.error(validationResult.asError.error);
      }

      if (type == TransactionType.debit) {
        final accountResult = await _accountRepository
            .watchAccountById(accountId)
            .first;
        if (!accountResult.hasData) {
          return Result.error(TransactionAccountNotFoundException(accountId));
        }

        final account = accountResult.asOk.value;
        if (account.balance < amount && account.type != AccountType.credit) {
          return Result.error(
            InsufficientFundsException(
              accountId: accountId,
              requestedAmount: amount,
              availableBalance: account.balance,
            ),
          );
        }
      }

      final result = await _transactionRepository.createTransaction(
        accountId: accountId,
        amount: amount,
        type: type,
        categoryId: categoryId,
        description: description,
        merchantName: merchantName,
        transactionDate: transactionDate ?? DateTime.now(),
      );

      return result.when(
        ok: (transaction) async {
          await _transactionLocalRepository.saveTransactions([transaction]);
          return Result.ok(transaction);
        },
        error: (error) {
          return Result.error(error);
        },
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<bool>> _validateTransactionData({
    required String accountId,
    required double amount,
    required TransactionType type,
    required String categoryId,
    required String description,
    DateTime? transactionDate,
  }) async {
    return Result.ok(true);
  }
}
