// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_information_logic_selected_card_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CardInformationCardController)
const cardInformationCardControllerProvider =
    CardInformationCardControllerProvider._();

final class CardInformationCardControllerProvider
    extends
        $StreamNotifierProvider<
          CardInformationCardController,
          List<CreditCardEntity>
        > {
  const CardInformationCardControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardInformationCardControllerProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          getAllCreditCardsUseCaseProvider,
          syncAllCreditCardsUseCaseProvider,
          cardAddSelectedCardProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          CardInformationCardControllerProvider.$allTransitiveDependencies0,
          CardInformationCardControllerProvider.$allTransitiveDependencies1,
          CardInformationCardControllerProvider.$allTransitiveDependencies2,
          CardInformationCardControllerProvider.$allTransitiveDependencies3,
          CardInformationCardControllerProvider.$allTransitiveDependencies4,
          CardInformationCardControllerProvider.$allTransitiveDependencies5,
          CardInformationCardControllerProvider.$allTransitiveDependencies6,
        },
      );

  static const $allTransitiveDependencies0 = getAllCreditCardsUseCaseProvider;
  static const $allTransitiveDependencies1 =
      GetAllCreditCardsUseCaseProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 =
      GetAllCreditCardsUseCaseProvider.$allTransitiveDependencies1;
  static const $allTransitiveDependencies3 =
      GetAllCreditCardsUseCaseProvider.$allTransitiveDependencies2;
  static const $allTransitiveDependencies4 =
      GetAllCreditCardsUseCaseProvider.$allTransitiveDependencies3;
  static const $allTransitiveDependencies5 = syncAllCreditCardsUseCaseProvider;
  static const $allTransitiveDependencies6 = cardAddSelectedCardProvider;

  @override
  String debugGetCreateSourceHash() => _$cardInformationCardControllerHash();

  @$internal
  @override
  CardInformationCardController create() => CardInformationCardController();
}

String _$cardInformationCardControllerHash() =>
    r'60ed3e685146c7a2ffba994daf6c5ab16b8efb0d';

abstract class _$CardInformationCardController
    extends $StreamNotifier<List<CreditCardEntity>> {
  Stream<List<CreditCardEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<List<CreditCardEntity>>, List<CreditCardEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<CreditCardEntity>>,
                List<CreditCardEntity>
              >,
              AsyncValue<List<CreditCardEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(cardAddSelectedCard)
const cardAddSelectedCardProvider = CardAddSelectedCardProvider._();

final class CardAddSelectedCardProvider
    extends
        $FunctionalProvider<
          ValueNotifier<CreditCardEntity>,
          ValueNotifier<CreditCardEntity>,
          ValueNotifier<CreditCardEntity>
        >
    with $Provider<ValueNotifier<CreditCardEntity>> {
  const CardAddSelectedCardProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardAddSelectedCardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cardAddSelectedCardHash();

  @$internal
  @override
  $ProviderElement<ValueNotifier<CreditCardEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ValueNotifier<CreditCardEntity> create(Ref ref) {
    return cardAddSelectedCard(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ValueNotifier<CreditCardEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ValueNotifier<CreditCardEntity>>(
        value,
      ),
    );
  }
}

String _$cardAddSelectedCardHash() =>
    r'41c543b461cd66bf186a548760e4ad944fac9e06';
