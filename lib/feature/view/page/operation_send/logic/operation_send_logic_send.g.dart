// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_send_logic_send.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(operationSendController)
const operationSendControllerProvider = OperationSendControllerProvider._();

final class OperationSendControllerProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const OperationSendControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'operationSendControllerProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          createTransactionUseCaseProvider,
          operationSendSelectedCardProvider,
          operationSendAmountControllerProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          OperationSendControllerProvider.$allTransitiveDependencies0,
          OperationSendControllerProvider.$allTransitiveDependencies1,
          OperationSendControllerProvider.$allTransitiveDependencies2,
          OperationSendControllerProvider.$allTransitiveDependencies3,
          OperationSendControllerProvider.$allTransitiveDependencies4,
          OperationSendControllerProvider.$allTransitiveDependencies5,
          OperationSendControllerProvider.$allTransitiveDependencies6,
          OperationSendControllerProvider.$allTransitiveDependencies7,
          OperationSendControllerProvider.$allTransitiveDependencies8,
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
  static const $allTransitiveDependencies7 = operationSendSelectedCardProvider;
  static const $allTransitiveDependencies8 =
      operationSendAmountControllerProvider;

  @override
  String debugGetCreateSourceHash() => _$operationSendControllerHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return operationSendController(ref);
  }
}

String _$operationSendControllerHash() =>
    r'b016ed815a4e102069b6b1d7d5d853a4a613c09e';
