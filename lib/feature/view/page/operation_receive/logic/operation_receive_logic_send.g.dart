// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_receive_logic_send.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(operationReceiveController)
const operationReceiveControllerProvider =
    OperationReceiveControllerProvider._();

final class OperationReceiveControllerProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const OperationReceiveControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'operationReceiveControllerProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          createTransactionUseCaseProvider,
          operationReceiveSelectedCardProvider,
          operationReceiveAmountControllerProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          OperationReceiveControllerProvider.$allTransitiveDependencies0,
          OperationReceiveControllerProvider.$allTransitiveDependencies1,
          OperationReceiveControllerProvider.$allTransitiveDependencies2,
          OperationReceiveControllerProvider.$allTransitiveDependencies3,
          OperationReceiveControllerProvider.$allTransitiveDependencies4,
          OperationReceiveControllerProvider.$allTransitiveDependencies5,
          OperationReceiveControllerProvider.$allTransitiveDependencies6,
          OperationReceiveControllerProvider.$allTransitiveDependencies7,
          OperationReceiveControllerProvider.$allTransitiveDependencies8,
        },
      );

  static const $allTransitiveDependencies0 = createTransactionUseCaseProvider;
  static const $allTransitiveDependencies1 =
      CreateTransactionUseCaseProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 =
      CreateTransactionUseCaseProvider.$allTransitiveDependencies1;
  static const $allTransitiveDependencies3 =
      CreateTransactionUseCaseProvider.$allTransitiveDependencies2;
  static const $allTransitiveDependencies4 =
      CreateTransactionUseCaseProvider.$allTransitiveDependencies3;
  static const $allTransitiveDependencies5 =
      CreateTransactionUseCaseProvider.$allTransitiveDependencies4;
  static const $allTransitiveDependencies6 =
      CreateTransactionUseCaseProvider.$allTransitiveDependencies5;
  static const $allTransitiveDependencies7 =
      operationReceiveSelectedCardProvider;
  static const $allTransitiveDependencies8 =
      operationReceiveAmountControllerProvider;

  @override
  String debugGetCreateSourceHash() => _$operationReceiveControllerHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return operationReceiveController(ref);
  }
}

String _$operationReceiveControllerHash() =>
    r'aceb8e7e40dff9484cd90bba21969911cbec8bdc';
