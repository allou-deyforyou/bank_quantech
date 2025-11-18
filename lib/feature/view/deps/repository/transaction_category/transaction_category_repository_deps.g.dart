// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_category_repository_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(categoryRepository)
const categoryRepositoryProvider = CategoryRepositoryProvider._();

final class CategoryRepositoryProvider
    extends
        $FunctionalProvider<
          TransactionCategoryRepository,
          TransactionCategoryRepository,
          TransactionCategoryRepository
        >
    with $Provider<TransactionCategoryRepository> {
  const CategoryRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryRepositoryProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[dioDataSourceProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          CategoryRepositoryProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = dioDataSourceProvider;

  @override
  String debugGetCreateSourceHash() => _$categoryRepositoryHash();

  @$internal
  @override
  $ProviderElement<TransactionCategoryRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TransactionCategoryRepository create(Ref ref) {
    return categoryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionCategoryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionCategoryRepository>(
        value,
      ),
    );
  }
}

String _$categoryRepositoryHash() =>
    r'16cbe1da45603386ee5a4c687f80a06366cdc218';

@ProviderFor(categoryLocalRepository)
const categoryLocalRepositoryProvider = CategoryLocalRepositoryProvider._();

final class CategoryLocalRepositoryProvider
    extends
        $FunctionalProvider<
          TransactionCategoryLocalRepository,
          TransactionCategoryLocalRepository,
          TransactionCategoryLocalRepository
        >
    with $Provider<TransactionCategoryLocalRepository> {
  const CategoryLocalRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryLocalRepositoryProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[sembastDataSourceProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          CategoryLocalRepositoryProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = sembastDataSourceProvider;

  @override
  String debugGetCreateSourceHash() => _$categoryLocalRepositoryHash();

  @$internal
  @override
  $ProviderElement<TransactionCategoryLocalRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TransactionCategoryLocalRepository create(Ref ref) {
    return categoryLocalRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionCategoryLocalRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionCategoryLocalRepository>(
        value,
      ),
    );
  }
}

String _$categoryLocalRepositoryHash() =>
    r'899631bca0e5f067daa2a81748574c46bb532e20';
