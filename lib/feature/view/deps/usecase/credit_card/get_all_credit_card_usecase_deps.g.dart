// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_credit_card_usecase_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(syncAllCreditCardsUseCase)
const syncAllCreditCardsUseCaseProvider = SyncAllCreditCardsUseCaseProvider._();

final class SyncAllCreditCardsUseCaseProvider
    extends
        $FunctionalProvider<
          SyncAllCreditCardsUseCase,
          SyncAllCreditCardsUseCase,
          SyncAllCreditCardsUseCase
        >
    with $Provider<SyncAllCreditCardsUseCase> {
  const SyncAllCreditCardsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'syncAllCreditCardsUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          creditCardRepositoryProvider,
          creditCardLocalRepositoryProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          SyncAllCreditCardsUseCaseProvider.$allTransitiveDependencies0,
          SyncAllCreditCardsUseCaseProvider.$allTransitiveDependencies1,
          SyncAllCreditCardsUseCaseProvider.$allTransitiveDependencies2,
          SyncAllCreditCardsUseCaseProvider.$allTransitiveDependencies3,
        },
      );

  static const $allTransitiveDependencies0 = creditCardRepositoryProvider;
  static const $allTransitiveDependencies1 =
      CreditCardRepositoryProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 = creditCardLocalRepositoryProvider;
  static const $allTransitiveDependencies3 =
      CreditCardLocalRepositoryProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$syncAllCreditCardsUseCaseHash();

  @$internal
  @override
  $ProviderElement<SyncAllCreditCardsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SyncAllCreditCardsUseCase create(Ref ref) {
    return syncAllCreditCardsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SyncAllCreditCardsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SyncAllCreditCardsUseCase>(value),
    );
  }
}

String _$syncAllCreditCardsUseCaseHash() =>
    r'cecc020428ea2020df12df0a36896c99818e66ee';

@ProviderFor(getAllCreditCardsUseCase)
const getAllCreditCardsUseCaseProvider = GetAllCreditCardsUseCaseProvider._();

final class GetAllCreditCardsUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllCreditCardsUseCase,
          GetAllCreditCardsUseCase,
          GetAllCreditCardsUseCase
        >
    with $Provider<GetAllCreditCardsUseCase> {
  const GetAllCreditCardsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllCreditCardsUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          creditCardRepositoryProvider,
          creditCardLocalRepositoryProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          GetAllCreditCardsUseCaseProvider.$allTransitiveDependencies0,
          GetAllCreditCardsUseCaseProvider.$allTransitiveDependencies1,
          GetAllCreditCardsUseCaseProvider.$allTransitiveDependencies2,
          GetAllCreditCardsUseCaseProvider.$allTransitiveDependencies3,
        },
      );

  static const $allTransitiveDependencies0 = creditCardRepositoryProvider;
  static const $allTransitiveDependencies1 =
      CreditCardRepositoryProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 = creditCardLocalRepositoryProvider;
  static const $allTransitiveDependencies3 =
      CreditCardLocalRepositoryProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$getAllCreditCardsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllCreditCardsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllCreditCardsUseCase create(Ref ref) {
    return getAllCreditCardsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllCreditCardsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllCreditCardsUseCase>(value),
    );
  }
}

String _$getAllCreditCardsUseCaseHash() =>
    r'3d2f39b5e23ef9694eee327f23c1660d6a29fe76';

@ProviderFor(getAllCreditCardsWithSyncUseCase)
const getAllCreditCardsWithSyncUseCaseProvider =
    GetAllCreditCardsWithSyncUseCaseProvider._();

final class GetAllCreditCardsWithSyncUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllCreditCardsWithSyncUseCase,
          GetAllCreditCardsWithSyncUseCase,
          GetAllCreditCardsWithSyncUseCase
        >
    with $Provider<GetAllCreditCardsWithSyncUseCase> {
  const GetAllCreditCardsWithSyncUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllCreditCardsWithSyncUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          syncAllCreditCardsUseCaseProvider,
          getAllCreditCardsUseCaseProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          GetAllCreditCardsWithSyncUseCaseProvider.$allTransitiveDependencies0,
          GetAllCreditCardsWithSyncUseCaseProvider.$allTransitiveDependencies1,
          GetAllCreditCardsWithSyncUseCaseProvider.$allTransitiveDependencies2,
          GetAllCreditCardsWithSyncUseCaseProvider.$allTransitiveDependencies3,
          GetAllCreditCardsWithSyncUseCaseProvider.$allTransitiveDependencies4,
          GetAllCreditCardsWithSyncUseCaseProvider.$allTransitiveDependencies5,
        },
      );

  static const $allTransitiveDependencies0 = syncAllCreditCardsUseCaseProvider;
  static const $allTransitiveDependencies1 =
      SyncAllCreditCardsUseCaseProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 =
      SyncAllCreditCardsUseCaseProvider.$allTransitiveDependencies1;
  static const $allTransitiveDependencies3 =
      SyncAllCreditCardsUseCaseProvider.$allTransitiveDependencies2;
  static const $allTransitiveDependencies4 =
      SyncAllCreditCardsUseCaseProvider.$allTransitiveDependencies3;
  static const $allTransitiveDependencies5 = getAllCreditCardsUseCaseProvider;

  @override
  String debugGetCreateSourceHash() => _$getAllCreditCardsWithSyncUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllCreditCardsWithSyncUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllCreditCardsWithSyncUseCase create(Ref ref) {
    return getAllCreditCardsWithSyncUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllCreditCardsWithSyncUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllCreditCardsWithSyncUseCase>(
        value,
      ),
    );
  }
}

String _$getAllCreditCardsWithSyncUseCaseHash() =>
    r'13df0a802efb22e89459fae08cffb98c3bd42d4f';
