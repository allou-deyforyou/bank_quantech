// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_repository_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(creditCardRepository)
const creditCardRepositoryProvider = CreditCardRepositoryProvider._();

final class CreditCardRepositoryProvider
    extends
        $FunctionalProvider<
          CreditCardRepository,
          CreditCardRepository,
          CreditCardRepository
        >
    with $Provider<CreditCardRepository> {
  const CreditCardRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'creditCardRepositoryProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[dioDataSourceProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          CreditCardRepositoryProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = dioDataSourceProvider;

  @override
  String debugGetCreateSourceHash() => _$creditCardRepositoryHash();

  @$internal
  @override
  $ProviderElement<CreditCardRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreditCardRepository create(Ref ref) {
    return creditCardRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreditCardRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreditCardRepository>(value),
    );
  }
}

String _$creditCardRepositoryHash() =>
    r'85b603e94ad592c5b3248fa096da8ab2b894be93';

@ProviderFor(creditCardLocalRepository)
const creditCardLocalRepositoryProvider = CreditCardLocalRepositoryProvider._();

final class CreditCardLocalRepositoryProvider
    extends
        $FunctionalProvider<
          CreditCardLocalRepository,
          CreditCardLocalRepository,
          CreditCardLocalRepository
        >
    with $Provider<CreditCardLocalRepository> {
  const CreditCardLocalRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'creditCardLocalRepositoryProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[sembastDataSourceProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          CreditCardLocalRepositoryProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = sembastDataSourceProvider;

  @override
  String debugGetCreateSourceHash() => _$creditCardLocalRepositoryHash();

  @$internal
  @override
  $ProviderElement<CreditCardLocalRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreditCardLocalRepository create(Ref ref) {
    return creditCardLocalRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreditCardLocalRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreditCardLocalRepository>(value),
    );
  }
}

String _$creditCardLocalRepositoryHash() =>
    r'bb18e02a03fdbc86f389c512c0566222af7c3a64';
