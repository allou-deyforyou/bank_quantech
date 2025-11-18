// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_receive_logic_amount_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(operationReceiveAmountController)
const operationReceiveAmountControllerProvider =
    OperationReceiveAmountControllerProvider._();

final class OperationReceiveAmountControllerProvider
    extends
        $FunctionalProvider<
          TextEditingController,
          TextEditingController,
          TextEditingController
        >
    with $Provider<TextEditingController> {
  const OperationReceiveAmountControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'operationReceiveAmountControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$operationReceiveAmountControllerHash();

  @$internal
  @override
  $ProviderElement<TextEditingController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TextEditingController create(Ref ref) {
    return operationReceiveAmountController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TextEditingController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TextEditingController>(value),
    );
  }
}

String _$operationReceiveAmountControllerHash() =>
    r'fd313972d8dbc5892797b5f074ce84c02a6fdecb';
