// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_usecase_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(createTransactionUseCase)
const createTransactionUseCaseProvider = CreateTransactionUseCaseProvider._();

final class CreateTransactionUseCaseProvider
    extends
        $FunctionalProvider<
          CreateTransactionUseCase,
          CreateTransactionUseCase,
          CreateTransactionUseCase
        >
    with $Provider<CreateTransactionUseCase> {
  const CreateTransactionUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createTransactionUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          accountRepositoryProvider,
          categoryRepositoryProvider,
          transactionRepositoryProvider,
          transactionLocalRepositoryProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          CreateTransactionUseCaseProvider.$allTransitiveDependencies0,
          CreateTransactionUseCaseProvider.$allTransitiveDependencies1,
          CreateTransactionUseCaseProvider.$allTransitiveDependencies2,
          CreateTransactionUseCaseProvider.$allTransitiveDependencies3,
          CreateTransactionUseCaseProvider.$allTransitiveDependencies4,
          CreateTransactionUseCaseProvider.$allTransitiveDependencies5,
        },
      );

  static const $allTransitiveDependencies0 = accountRepositoryProvider;
  static const $allTransitiveDependencies1 =
      AccountRepositoryProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 = categoryRepositoryProvider;
  static const $allTransitiveDependencies3 = transactionRepositoryProvider;
  static const $allTransitiveDependencies4 = transactionLocalRepositoryProvider;
  static const $allTransitiveDependencies5 =
      TransactionLocalRepositoryProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$createTransactionUseCaseHash();

  @$internal
  @override
  $ProviderElement<CreateTransactionUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreateTransactionUseCase create(Ref ref) {
    return createTransactionUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateTransactionUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateTransactionUseCase>(value),
    );
  }
}

String _$createTransactionUseCaseHash() =>
    r'0ec1335f8a6139b9d5c57c95f50632c50734b499';
