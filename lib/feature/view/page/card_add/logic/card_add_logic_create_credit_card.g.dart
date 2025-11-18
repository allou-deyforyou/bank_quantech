// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_add_logic_create_credit_card.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cardAddCreateCreditCardController)
const cardAddCreateCreditCardControllerProvider =
    CardAddCreateCreditCardControllerProvider._();

final class CardAddCreateCreditCardControllerProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const CardAddCreateCreditCardControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardAddCreateCreditCardControllerProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          createCreditCardUseCaseProvider,
          cardAddSelectedColorProvider,
          cardAddNameControllerProvider,
          cardAddCardNumberControllerProvider,
          cardAddValidThruDateProvider,
          cardAddCvvControllerProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies0,
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies1,
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies2,
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies3,
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies4,
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies5,
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies6,
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies7,
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies8,
          CardAddCreateCreditCardControllerProvider.$allTransitiveDependencies9,
          CardAddCreateCreditCardControllerProvider
              .$allTransitiveDependencies10,
          CardAddCreateCreditCardControllerProvider
              .$allTransitiveDependencies11,
        },
      );

  static const $allTransitiveDependencies0 = createCreditCardUseCaseProvider;
  static const $allTransitiveDependencies1 =
      CreateCreditCardUseCaseProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 =
      CreateCreditCardUseCaseProvider.$allTransitiveDependencies1;
  static const $allTransitiveDependencies3 =
      CreateCreditCardUseCaseProvider.$allTransitiveDependencies2;
  static const $allTransitiveDependencies4 =
      CreateCreditCardUseCaseProvider.$allTransitiveDependencies3;
  static const $allTransitiveDependencies5 = cardAddSelectedColorProvider;
  static const $allTransitiveDependencies6 =
      CardAddSelectedColorProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies7 = cardAddNameControllerProvider;
  static const $allTransitiveDependencies8 =
      cardAddCardNumberControllerProvider;
  static const $allTransitiveDependencies9 = cardAddValidThruDateProvider;
  static const $allTransitiveDependencies10 =
      CardAddValidThruDateProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies11 = cardAddCvvControllerProvider;

  @override
  String debugGetCreateSourceHash() =>
      _$cardAddCreateCreditCardControllerHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return cardAddCreateCreditCardController(ref);
  }
}

String _$cardAddCreateCreditCardControllerHash() =>
    r'fc3d1b1f5e0d4de3d1f844a7f85ddffd9369fe6f';
