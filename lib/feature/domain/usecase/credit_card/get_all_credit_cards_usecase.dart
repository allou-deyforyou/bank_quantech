import 'dart:async';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class SyncAllCreditCardsUseCase {
  const SyncAllCreditCardsUseCase({
    required CreditCardRepository creditCardRepository,
    required CreditCardLocalRepository creditCardLocalRepository,
  }) : _repository = creditCardRepository,
       _localRepository = creditCardLocalRepository;

  final CreditCardRepository _repository;
  final CreditCardLocalRepository _localRepository;

  Future<Result<void>> call() async {
    final result = await _repository.watchAllCreditCards().first;
    return await result.fold(
      onOk: (cards) async {
        await _localRepository.saveCreditCards(cards);
        return Result.ok(null);
      },
      onError: (error) => Result.error(error),
    );
  }
}

final class GetAllCreditCardsUseCase {
  const GetAllCreditCardsUseCase({
    required CreditCardLocalRepository creditCardLocalRepository,
  }) : _localRepository = creditCardLocalRepository;

  final CreditCardLocalRepository _localRepository;

  @override
  String toString() {
    return '$runtimeType()';
  }

  Stream<Result<List<CreditCardEntity>>> call() {
    final data = _localRepository.watchAllCreditCards();
    return data;
  }
}

final class GetAllCreditCardsWithSyncUseCase {
  const GetAllCreditCardsWithSyncUseCase({
    required GetAllCreditCardsUseCase getAllCreditCardsUseCase,
    required SyncAllCreditCardsUseCase syncAllCreditCardsUseCase,
  }) : _getAllCreditCardsUseCase = getAllCreditCardsUseCase,
       _syncAllCreditCardsUseCase = syncAllCreditCardsUseCase;

  final GetAllCreditCardsUseCase _getAllCreditCardsUseCase;
  final SyncAllCreditCardsUseCase _syncAllCreditCardsUseCase;

  @override
  String toString() {
    return '$runtimeType()';
  }

  Stream<Result<List<CreditCardEntity>>> call() async* {
    unawaited(_syncAllCreditCardsUseCase());
    yield* _getAllCreditCardsUseCase();
  }
}
