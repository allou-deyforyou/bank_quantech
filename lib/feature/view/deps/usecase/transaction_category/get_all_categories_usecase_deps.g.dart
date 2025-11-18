// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_categories_usecase_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(syncAllCategoriesUseCase)
const syncAllCategoriesUseCaseProvider = SyncAllCategoriesUseCaseProvider._();

final class SyncAllCategoriesUseCaseProvider
    extends
        $FunctionalProvider<
          SyncAllCategoriesUseCase,
          SyncAllCategoriesUseCase,
          SyncAllCategoriesUseCase
        >
    with $Provider<SyncAllCategoriesUseCase> {
  const SyncAllCategoriesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'syncAllCategoriesUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          categoryRepositoryProvider,
          categoryLocalRepositoryProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          SyncAllCategoriesUseCaseProvider.$allTransitiveDependencies0,
          SyncAllCategoriesUseCaseProvider.$allTransitiveDependencies1,
          SyncAllCategoriesUseCaseProvider.$allTransitiveDependencies2,
          SyncAllCategoriesUseCaseProvider.$allTransitiveDependencies3,
        },
      );

  static const $allTransitiveDependencies0 = categoryRepositoryProvider;
  static const $allTransitiveDependencies1 =
      CategoryRepositoryProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 = categoryLocalRepositoryProvider;
  static const $allTransitiveDependencies3 =
      CategoryLocalRepositoryProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$syncAllCategoriesUseCaseHash();

  @$internal
  @override
  $ProviderElement<SyncAllCategoriesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SyncAllCategoriesUseCase create(Ref ref) {
    return syncAllCategoriesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SyncAllCategoriesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SyncAllCategoriesUseCase>(value),
    );
  }
}

String _$syncAllCategoriesUseCaseHash() =>
    r'bf286a00f9a8a8950f24f2a13cc369722b6d8750';

@ProviderFor(getAllCategoriesUseCase)
const getAllCategoriesUseCaseProvider = GetAllCategoriesUseCaseProvider._();

final class GetAllCategoriesUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllCategoriesUseCase,
          GetAllCategoriesUseCase,
          GetAllCategoriesUseCase
        >
    with $Provider<GetAllCategoriesUseCase> {
  const GetAllCategoriesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllCategoriesUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[categoryLocalRepositoryProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          GetAllCategoriesUseCaseProvider.$allTransitiveDependencies0,
          GetAllCategoriesUseCaseProvider.$allTransitiveDependencies1,
        ],
      );

  static const $allTransitiveDependencies0 = categoryLocalRepositoryProvider;
  static const $allTransitiveDependencies1 =
      CategoryLocalRepositoryProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$getAllCategoriesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllCategoriesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllCategoriesUseCase create(Ref ref) {
    return getAllCategoriesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllCategoriesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllCategoriesUseCase>(value),
    );
  }
}

String _$getAllCategoriesUseCaseHash() =>
    r'f2396ff256f4234e3aa68626d42f4c06918406d3';

@ProviderFor(getAllCategoriesWithSyncUseCase)
const getAllCategoriesWithSyncUseCaseProvider =
    GetAllCategoriesWithSyncUseCaseProvider._();

final class GetAllCategoriesWithSyncUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllCategoriesWithSyncUseCase,
          GetAllCategoriesWithSyncUseCase,
          GetAllCategoriesWithSyncUseCase
        >
    with $Provider<GetAllCategoriesWithSyncUseCase> {
  const GetAllCategoriesWithSyncUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllCategoriesWithSyncUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          syncAllCategoriesUseCaseProvider,
          getAllCategoriesUseCaseProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies0,
          GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies1,
          GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies2,
          GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies3,
          GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies4,
          GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies5,
        },
      );

  static const $allTransitiveDependencies0 = syncAllCategoriesUseCaseProvider;
  static const $allTransitiveDependencies1 =
      SyncAllCategoriesUseCaseProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 =
      SyncAllCategoriesUseCaseProvider.$allTransitiveDependencies1;
  static const $allTransitiveDependencies3 =
      SyncAllCategoriesUseCaseProvider.$allTransitiveDependencies2;
  static const $allTransitiveDependencies4 =
      SyncAllCategoriesUseCaseProvider.$allTransitiveDependencies3;
  static const $allTransitiveDependencies5 = getAllCategoriesUseCaseProvider;

  @override
  String debugGetCreateSourceHash() => _$getAllCategoriesWithSyncUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllCategoriesWithSyncUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllCategoriesWithSyncUseCase create(Ref ref) {
    return getAllCategoriesWithSyncUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllCategoriesWithSyncUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllCategoriesWithSyncUseCase>(
        value,
      ),
    );
  }
}

String _$getAllCategoriesWithSyncUseCaseHash() =>
    r'df078023042128e7ef322bb3ed4303677d03e464';
