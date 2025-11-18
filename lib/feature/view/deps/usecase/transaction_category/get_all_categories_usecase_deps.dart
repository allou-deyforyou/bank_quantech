import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'get_all_categories_usecase_deps.g.dart';

@Riverpod(dependencies: [categoryRepository, categoryLocalRepository])
SyncAllCategoriesUseCase syncAllCategoriesUseCase(Ref ref) {
  return SyncAllCategoriesUseCase(
    categoryRepository: ref.read(categoryRepositoryProvider),
    categoryLocalRepository: ref.read(categoryLocalRepositoryProvider),
  );
}

@Riverpod(dependencies: [categoryLocalRepository])
GetAllCategoriesUseCase getAllCategoriesUseCase(Ref ref) {
  return GetAllCategoriesUseCase(
    categoryLocalRepository: ref.read(categoryLocalRepositoryProvider),
  );
}

@Riverpod(dependencies: [syncAllCategoriesUseCase, getAllCategoriesUseCase])
GetAllCategoriesWithSyncUseCase getAllCategoriesWithSyncUseCase(Ref ref) {
  return GetAllCategoriesWithSyncUseCase(
    getAllCategoriesUseCase: ref.read(getAllCategoriesUseCaseProvider),
    syncAllCategoriesUseCase: ref.read(syncAllCategoriesUseCaseProvider),
  );
}
