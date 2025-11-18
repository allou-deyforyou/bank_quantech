import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class MockDataSource {
  MockDataSource();

  @override
  String toString() {
    return '$runtimeType()';
  }

  void dispose() {
    accountDataController.close();
    creditCardDataController.close();
    transactionDataController.close();
    transactionCategoryDataController.close();
  }

  final accountDataController =
      StreamController<List<AccountEntity>>.broadcast();
  Completer<List<AccountEntity>>? _accountDataCompleter;
  Future<List<AccountEntity>> getAccountData() async {
    if (_accountDataCompleter != null) {
      return _accountDataCompleter!.future;
    }
    _accountDataCompleter = Completer<List<AccountEntity>>();
    // Mock empty data until JSON file is created
    final accounts = <AccountEntity>[];
    _accountDataCompleter!.complete(accounts);
    return accounts;
  }

  final creditCardDataController =
      StreamController<List<CreditCardEntity>>.broadcast();
  Completer<List<CreditCardEntity>>? _creditCardDataCompleter;
  Future<List<CreditCardEntity>> getCreditCardData() async {
    if (_creditCardDataCompleter != null) {
      return _creditCardDataCompleter!.future;
    }
    _creditCardDataCompleter = Completer<List<CreditCardEntity>>();
    // Mock empty data until JSON file is created
    final creditCards = <CreditCardEntity>[];
    _creditCardDataCompleter!.complete(creditCards);
    return creditCards;
  }

  final transactionDataController =
      StreamController<List<TransactionEntity>>.broadcast();
  Completer<List<TransactionEntity>>? _transactionDataCompleter;
  Future<List<TransactionEntity>> getTransactionData() async {
    if (_transactionDataCompleter != null) {
      return _transactionDataCompleter!.future;
    }
    _transactionDataCompleter = Completer<List<TransactionEntity>>();
    // Mock empty data until JSON file is created
    final rawData = await rootBundle.loadString(Assets.mocks.transactions);
    final data = await compute(
      debugLabel: TransactionMockModel.fromListJson.runtimeType.toString(),
      TransactionMockModel.fromListJson,
      rawData,
    );
    final transactions = List<TransactionEntity>.from(data);

    _transactionDataCompleter!.complete(transactions);
    return transactions;
  }

  final transactionCategoryDataController =
      StreamController<List<TransactionCategoryEntity>>.broadcast();
  Completer<List<TransactionCategoryEntity>>? _transactionCategoryDataCompleter;
  Future<List<TransactionCategoryEntity>> getTransactionCategoryData() async {
    if (_transactionCategoryDataCompleter != null) {
      return _transactionCategoryDataCompleter!.future;
    }
    _transactionCategoryDataCompleter =
        Completer<List<TransactionCategoryEntity>>();
    // Mock empty data until JSON file is created
    final rawData = await rootBundle.loadString(
      Assets.mocks.transactionCategories,
    );
    final data = await compute(
      debugLabel: TransactionCategoryMockModel.fromListJson.runtimeType
          .toString(),
      TransactionCategoryMockModel.fromListJson,
      rawData,
    );
    final transactionCategories = List<TransactionCategoryEntity>.from(data);

    _transactionCategoryDataCompleter!.complete(transactionCategories);
    return transactionCategories;
  }
}
