// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_repository_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(transactionRepository)
const transactionRepositoryProvider = TransactionRepositoryProvider._();

final class TransactionRepositoryProvider
    extends
        $FunctionalProvider<
          TransactionRepository,
          TransactionRepository,
          TransactionRepository
        >
    with $Provider<TransactionRepository> {
  const TransactionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionRepositoryProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[dioDataSourceProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          TransactionRepositoryProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = dioDataSourceProvider;

  @override
  String debugGetCreateSourceHash() => _$transactionRepositoryHash();

  @$internal
  @override
  $ProviderElement<TransactionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TransactionRepository create(Ref ref) {
    return transactionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionRepository>(value),
    );
  }
}

String _$transactionRepositoryHash() =>
    r'5c321fa6582b4821091d01ef896a4771e4235305';

@ProviderFor(transactionLocalRepository)
const transactionLocalRepositoryProvider =
    TransactionLocalRepositoryProvider._();

final class TransactionLocalRepositoryProvider
    extends
        $FunctionalProvider<
          TransactionLocalRepository,
          TransactionLocalRepository,
          TransactionLocalRepository
        >
    with $Provider<TransactionLocalRepository> {
  const TransactionLocalRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionLocalRepositoryProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[sembastDataSourceProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          TransactionLocalRepositoryProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = sembastDataSourceProvider;

  @override
  String debugGetCreateSourceHash() => _$transactionLocalRepositoryHash();

  @$internal
  @override
  $ProviderElement<TransactionLocalRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TransactionLocalRepository create(Ref ref) {
    return transactionLocalRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionLocalRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionLocalRepository>(value),
    );
  }
}

String _$transactionLocalRepositoryHash() =>
    r'ffd1bb08f44551700ef384efbb3e6c31ac11ded7';
