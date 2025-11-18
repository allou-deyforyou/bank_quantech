import 'dart:async';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class SyncAllCategoriesUseCase {
  const SyncAllCategoriesUseCase({
    required TransactionCategoryRepository categoryRepository,
    required TransactionCategoryLocalRepository
    categoryLocalRepository,
  }) : _repository = categoryRepository,
       _localRepository = categoryLocalRepository;

  final TransactionCategoryRepository _repository;
  final TransactionCategoryLocalRepository _localRepository;

  Future<Result<void>> call() async {
    final result = await _repository.watchAllCategories().first;
    return await result.fold(
      onOk: (categories) async {
        await _localRepository.saveCategories(categories);
        return Result.ok(null);
      },
      onError: (error) => Result.error(error),
    );
  }
}

final class GetAllCategoriesUseCase {
  const GetAllCategoriesUseCase({
    required TransactionCategoryLocalRepository
    categoryLocalRepository,
  }) : _localRepository = categoryLocalRepository;
  final TransactionCategoryLocalRepository _localRepository;

  @override
  String toString() {
    return '$runtimeType()';
  }

  Stream<Result<List<TransactionCategoryEntity>>> call() {
    final data = _localRepository.watchAllCategories();
    return data;
  }
}

final class GetAllCategoriesWithSyncUseCase {
  const GetAllCategoriesWithSyncUseCase({
    required GetAllCategoriesUseCase getAllCategoriesUseCase,
    required SyncAllCategoriesUseCase syncAllCategoriesUseCase,
  }) : _getAllCategoriesUseCase = getAllCategoriesUseCase,
       _syncAllCategoriesUseCase = syncAllCategoriesUseCase;

  final GetAllCategoriesUseCase _getAllCategoriesUseCase;
  final SyncAllCategoriesUseCase _syncAllCategoriesUseCase;

  @override
  String toString() {
    return '$runtimeType()';
  }

  Stream<Result<List<TransactionCategoryEntity>>> call() async* {
    unawaited(_syncAllCategoriesUseCase());
    yield* _getAllCategoriesUseCase();
  }
}
