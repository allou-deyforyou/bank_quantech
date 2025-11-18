// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_credit_card_usecase_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(createCreditCardUseCase)
const createCreditCardUseCaseProvider = CreateCreditCardUseCaseProvider._();

final class CreateCreditCardUseCaseProvider
    extends
        $FunctionalProvider<
          CreateCreditCardUseCase,
          CreateCreditCardUseCase,
          CreateCreditCardUseCase
        >
    with $Provider<CreateCreditCardUseCase> {
  const CreateCreditCardUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createCreditCardUseCaseProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          creditCardRepositoryProvider,
          creditCardLocalRepositoryProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          CreateCreditCardUseCaseProvider.$allTransitiveDependencies0,
          CreateCreditCardUseCaseProvider.$allTransitiveDependencies1,
          CreateCreditCardUseCaseProvider.$allTransitiveDependencies2,
          CreateCreditCardUseCaseProvider.$allTransitiveDependencies3,
        },
      );

  static const $allTransitiveDependencies0 = creditCardRepositoryProvider;
  static const $allTransitiveDependencies1 =
      CreditCardRepositoryProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 = creditCardLocalRepositoryProvider;
  static const $allTransitiveDependencies3 =
      CreditCardLocalRepositoryProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$createCreditCardUseCaseHash();

  @$internal
  @override
  $ProviderElement<CreateCreditCardUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreateCreditCardUseCase create(Ref ref) {
    return createCreditCardUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateCreditCardUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateCreditCardUseCase>(value),
    );
  }
}

String _$createCreditCardUseCaseHash() =>
    r'10f0337762dc141ec9ce93cc2f25cdfa53f49da7';
