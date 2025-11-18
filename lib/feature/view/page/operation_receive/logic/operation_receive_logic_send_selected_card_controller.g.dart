// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_receive_logic_send_selected_card_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OperationReceiveCardController)
const operationReceiveCardControllerProvider =
    OperationReceiveCardControllerProvider._();

final class OperationReceiveCardControllerProvider
    extends
        $StreamNotifierProvider<
          OperationReceiveCardController,
          List<CreditCardEntity>
        > {
  const OperationReceiveCardControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'operationReceiveCardControllerProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          getAllCreditCardsUseCaseProvider,
          syncAllCreditCardsUseCaseProvider,
          operationReceiveSelectedCardProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          OperationReceiveCardControllerProvider.$allTransitiveDependencies0,
          OperationReceiveCardControllerProvider.$allTransitiveDependencies1,
          OperationReceiveCardControllerProvider.$allTransitiveDependencies2,
          OperationReceiveCardControllerProvider.$allTransitiveDependencies3,
          OperationReceiveCardControllerProvider.$allTransitiveDependencies4,
          OperationReceiveCardControllerProvider.$allTransitiveDependencies5,
          OperationReceiveCardControllerProvider.$allTransitiveDependencies6,
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
  static const $allTransitiveDependencies6 =
      operationReceiveSelectedCardProvider;

  @override
  String debugGetCreateSourceHash() => _$operationReceiveCardControllerHash();

  @$internal
  @override
  OperationReceiveCardController create() => OperationReceiveCardController();
}

String _$operationReceiveCardControllerHash() =>
    r'14648bb55b1beb10d405e81566daa1d21f0b7615';

abstract class _$OperationReceiveCardController
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

@ProviderFor(operationReceiveSelectedCard)
const operationReceiveSelectedCardProvider =
    OperationReceiveSelectedCardProvider._();

final class OperationReceiveSelectedCardProvider
    extends
        $FunctionalProvider<
          ValueNotifier<CreditCardEntity>,
          ValueNotifier<CreditCardEntity>,
          ValueNotifier<CreditCardEntity>
        >
    with $Provider<ValueNotifier<CreditCardEntity>> {
  const OperationReceiveSelectedCardProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'operationReceiveSelectedCardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$operationReceiveSelectedCardHash();

  @$internal
  @override
  $ProviderElement<ValueNotifier<CreditCardEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ValueNotifier<CreditCardEntity> create(Ref ref) {
    return operationReceiveSelectedCard(ref);
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

String _$operationReceiveSelectedCardHash() =>
    r'cd1e7adb13b008d8ac18be2a3dbf413b09981f78';
