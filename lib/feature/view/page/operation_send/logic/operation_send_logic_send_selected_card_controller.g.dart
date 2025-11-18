// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_send_logic_send_selected_card_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OperationSendCardController)
const operationSendCardControllerProvider =
    OperationSendCardControllerProvider._();

final class OperationSendCardControllerProvider
    extends
        $StreamNotifierProvider<
          OperationSendCardController,
          List<CreditCardEntity>
        > {
  const OperationSendCardControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'operationSendCardControllerProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          getAllCreditCardsUseCaseProvider,
          syncAllCreditCardsUseCaseProvider,
          operationSendSelectedCardProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          OperationSendCardControllerProvider.$allTransitiveDependencies0,
          OperationSendCardControllerProvider.$allTransitiveDependencies1,
          OperationSendCardControllerProvider.$allTransitiveDependencies2,
          OperationSendCardControllerProvider.$allTransitiveDependencies3,
          OperationSendCardControllerProvider.$allTransitiveDependencies4,
          OperationSendCardControllerProvider.$allTransitiveDependencies5,
          OperationSendCardControllerProvider.$allTransitiveDependencies6,
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
  static const $allTransitiveDependencies6 = operationSendSelectedCardProvider;

  @override
  String debugGetCreateSourceHash() => _$operationSendCardControllerHash();

  @$internal
  @override
  OperationSendCardController create() => OperationSendCardController();
}

String _$operationSendCardControllerHash() =>
    r'6df1041194e5624a333b1882abf125bc51fdb60d';

abstract class _$OperationSendCardController
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

@ProviderFor(operationSendSelectedCard)
const operationSendSelectedCardProvider = OperationSendSelectedCardProvider._();

final class OperationSendSelectedCardProvider
    extends
        $FunctionalProvider<
          ValueNotifier<CreditCardEntity>,
          ValueNotifier<CreditCardEntity>,
          ValueNotifier<CreditCardEntity>
        >
    with $Provider<ValueNotifier<CreditCardEntity>> {
  const OperationSendSelectedCardProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'operationSendSelectedCardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$operationSendSelectedCardHash();

  @$internal
  @override
  $ProviderElement<ValueNotifier<CreditCardEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ValueNotifier<CreditCardEntity> create(Ref ref) {
    return operationSendSelectedCard(ref);
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

String _$operationSendSelectedCardHash() =>
    r'ca79e217f6046a995025e390b1d2069ab7fc34c2';
