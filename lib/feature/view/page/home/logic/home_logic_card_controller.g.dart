// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_logic_card_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider pour la liste des cartes de crédit avec synchronisation

@ProviderFor(HomeCardController)
const homeCardControllerProvider = HomeCardControllerProvider._();

/// Provider pour la liste des cartes de crédit avec synchronisation
final class HomeCardControllerProvider
    extends
        $StreamNotifierProvider<HomeCardController, List<CreditCardEntity>> {
  /// Provider pour la liste des cartes de crédit avec synchronisation
  const HomeCardControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeCardControllerProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          getAllCreditCardsUseCaseProvider,
          syncAllCreditCardsUseCaseProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          HomeCardControllerProvider.$allTransitiveDependencies0,
          HomeCardControllerProvider.$allTransitiveDependencies1,
          HomeCardControllerProvider.$allTransitiveDependencies2,
          HomeCardControllerProvider.$allTransitiveDependencies3,
          HomeCardControllerProvider.$allTransitiveDependencies4,
          HomeCardControllerProvider.$allTransitiveDependencies5,
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

  @override
  String debugGetCreateSourceHash() => _$homeCardControllerHash();

  @$internal
  @override
  HomeCardController create() => HomeCardController();
}

String _$homeCardControllerHash() =>
    r'83240a3dbc3743ed67de57af33e6fabe933f1a1e';

/// Provider pour la liste des cartes de crédit avec synchronisation

abstract class _$HomeCardController
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

@ProviderFor(homeSelectedCard)
const homeSelectedCardProvider = HomeSelectedCardProvider._();

final class HomeSelectedCardProvider
    extends
        $FunctionalProvider<
          ValueNotifier<CreditCardEntity>,
          ValueNotifier<CreditCardEntity>,
          ValueNotifier<CreditCardEntity>
        >
    with $Provider<ValueNotifier<CreditCardEntity>> {
  const HomeSelectedCardProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeSelectedCardProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[homeCardControllerProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          HomeSelectedCardProvider.$allTransitiveDependencies0,
          HomeSelectedCardProvider.$allTransitiveDependencies1,
          HomeSelectedCardProvider.$allTransitiveDependencies2,
          HomeSelectedCardProvider.$allTransitiveDependencies3,
          HomeSelectedCardProvider.$allTransitiveDependencies4,
          HomeSelectedCardProvider.$allTransitiveDependencies5,
          HomeSelectedCardProvider.$allTransitiveDependencies6,
        },
      );

  static const $allTransitiveDependencies0 = homeCardControllerProvider;
  static const $allTransitiveDependencies1 =
      HomeCardControllerProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 =
      HomeCardControllerProvider.$allTransitiveDependencies1;
  static const $allTransitiveDependencies3 =
      HomeCardControllerProvider.$allTransitiveDependencies2;
  static const $allTransitiveDependencies4 =
      HomeCardControllerProvider.$allTransitiveDependencies3;
  static const $allTransitiveDependencies5 =
      HomeCardControllerProvider.$allTransitiveDependencies4;
  static const $allTransitiveDependencies6 =
      HomeCardControllerProvider.$allTransitiveDependencies5;

  @override
  String debugGetCreateSourceHash() => _$homeSelectedCardHash();

  @$internal
  @override
  $ProviderElement<ValueNotifier<CreditCardEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ValueNotifier<CreditCardEntity> create(Ref ref) {
    return homeSelectedCard(ref);
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

String _$homeSelectedCardHash() => r'8b17e61a97857d9ff1f79275532b75276445f7b3';
