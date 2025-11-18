// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_repository_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(accountRepository)
const accountRepositoryProvider = AccountRepositoryProvider._();

final class AccountRepositoryProvider
    extends
        $FunctionalProvider<
          AccountRepository,
          AccountRepository,
          AccountRepository
        >
    with $Provider<AccountRepository> {
  const AccountRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountRepositoryProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[dioDataSourceProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          AccountRepositoryProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = dioDataSourceProvider;

  @override
  String debugGetCreateSourceHash() => _$accountRepositoryHash();

  @$internal
  @override
  $ProviderElement<AccountRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AccountRepository create(Ref ref) {
    return accountRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountRepository>(value),
    );
  }
}

String _$accountRepositoryHash() => r'af3581d32af3ac92c818fe1d04c0109fea4caeb2';

@ProviderFor(accountLocalRepository)
const accountLocalRepositoryProvider = AccountLocalRepositoryProvider._();

final class AccountLocalRepositoryProvider
    extends
        $FunctionalProvider<
          AccountLocalRepository,
          AccountLocalRepository,
          AccountLocalRepository
        >
    with $Provider<AccountLocalRepository> {
  const AccountLocalRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountLocalRepositoryProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[sembastDataSourceProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          AccountLocalRepositoryProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = sembastDataSourceProvider;

  @override
  String debugGetCreateSourceHash() => _$accountLocalRepositoryHash();

  @$internal
  @override
  $ProviderElement<AccountLocalRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AccountLocalRepository create(Ref ref) {
    return accountLocalRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountLocalRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountLocalRepository>(value),
    );
  }
}

String _$accountLocalRepositoryHash() =>
    r'288ba153865bc279ff6d7f634a63074811403bbb';
