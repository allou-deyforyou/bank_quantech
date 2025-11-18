// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_transaction_usecase_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(syncAllTransactionsUseCase)
const syncAllTransactionsUseCaseProvider =
    SyncAllTransactionsUseCaseProvider._();

final class SyncAllTransactionsUseCaseProvider
    extends
        $FunctionalProvider<
          SyncAllTransactionsUseCase,
          SyncAllTransactionsUseCase,
          SyncAllTransactionsUseCase
        >
    with $Provider<SyncAllTransactionsUseCase> {
  const SyncAllTransactionsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'syncAllTransactionsUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          transactionRepositoryProvider,
          transactionLocalRepositoryProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          SyncAllTransactionsUseCaseProvider.$allTransitiveDependencies0,
          SyncAllTransactionsUseCaseProvider.$allTransitiveDependencies1,
          SyncAllTransactionsUseCaseProvider.$allTransitiveDependencies2,
          SyncAllTransactionsUseCaseProvider.$allTransitiveDependencies3,
        },
      );

  static const $allTransitiveDependencies0 = transactionRepositoryProvider;
  static const $allTransitiveDependencies1 =
      TransactionRepositoryProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 = transactionLocalRepositoryProvider;
  static const $allTransitiveDependencies3 =
      TransactionLocalRepositoryProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$syncAllTransactionsUseCaseHash();

  @$internal
  @override
  $ProviderElement<SyncAllTransactionsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SyncAllTransactionsUseCase create(Ref ref) {
    return syncAllTransactionsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SyncAllTransactionsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SyncAllTransactionsUseCase>(value),
    );
  }
}

String _$syncAllTransactionsUseCaseHash() =>
    r'67762656d85da59f6f3d0a5ca0deb6ca11ddc55e';

@ProviderFor(getAllTransactionsUseCase)
const getAllTransactionsUseCaseProvider = GetAllTransactionsUseCaseProvider._();

final class GetAllTransactionsUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllTransactionsUseCase,
          GetAllTransactionsUseCase,
          GetAllTransactionsUseCase
        >
    with $Provider<GetAllTransactionsUseCase> {
  const GetAllTransactionsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllTransactionsUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          transactionRepositoryProvider,
          transactionLocalRepositoryProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          GetAllTransactionsUseCaseProvider.$allTransitiveDependencies0,
          GetAllTransactionsUseCaseProvider.$allTransitiveDependencies1,
          GetAllTransactionsUseCaseProvider.$allTransitiveDependencies2,
          GetAllTransactionsUseCaseProvider.$allTransitiveDependencies3,
        },
      );

  static const $allTransitiveDependencies0 = transactionRepositoryProvider;
  static const $allTransitiveDependencies1 =
      TransactionRepositoryProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 = transactionLocalRepositoryProvider;
  static const $allTransitiveDependencies3 =
      TransactionLocalRepositoryProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$getAllTransactionsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllTransactionsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllTransactionsUseCase create(Ref ref) {
    return getAllTransactionsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllTransactionsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllTransactionsUseCase>(value),
    );
  }
}

String _$getAllTransactionsUseCaseHash() =>
    r'f5dface02253854ffe3317031577468330a0fc00';

@ProviderFor(getAllTransactionsWithSyncUseCase)
const getAllTransactionsWithSyncUseCaseProvider =
    GetAllTransactionsWithSyncUseCaseProvider._();

final class GetAllTransactionsWithSyncUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllTransactionsWithSyncUseCase,
          GetAllTransactionsWithSyncUseCase,
          GetAllTransactionsWithSyncUseCase
        >
    with $Provider<GetAllTransactionsWithSyncUseCase> {
  const GetAllTransactionsWithSyncUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllTransactionsWithSyncUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          syncAllTransactionsUseCaseProvider,
          getAllTransactionsUseCaseProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          GetAllTransactionsWithSyncUseCaseProvider.$allTransitiveDependencies0,
          GetAllTransactionsWithSyncUseCaseProvider.$allTransitiveDependencies1,
          GetAllTransactionsWithSyncUseCaseProvider.$allTransitiveDependencies2,
          GetAllTransactionsWithSyncUseCaseProvider.$allTransitiveDependencies3,
          GetAllTransactionsWithSyncUseCaseProvider.$allTransitiveDependencies4,
          GetAllTransactionsWithSyncUseCaseProvider.$allTransitiveDependencies5,
        },
      );

  static const $allTransitiveDependencies0 = syncAllTransactionsUseCaseProvider;
  static const $allTransitiveDependencies1 =
      SyncAllTransactionsUseCaseProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 =
      SyncAllTransactionsUseCaseProvider.$allTransitiveDependencies1;
  static const $allTransitiveDependencies3 =
      SyncAllTransactionsUseCaseProvider.$allTransitiveDependencies2;
  static const $allTransitiveDependencies4 =
      SyncAllTransactionsUseCaseProvider.$allTransitiveDependencies3;
  static const $allTransitiveDependencies5 = getAllTransactionsUseCaseProvider;

  @override
  String debugGetCreateSourceHash() =>
      _$getAllTransactionsWithSyncUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllTransactionsWithSyncUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllTransactionsWithSyncUseCase create(Ref ref) {
    return getAllTransactionsWithSyncUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllTransactionsWithSyncUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllTransactionsWithSyncUseCase>(
        value,
      ),
    );
  }
}

String _$getAllTransactionsWithSyncUseCaseHash() =>
    r'ff6f35809d1c1c51a517457a1ab533525f46328e';
