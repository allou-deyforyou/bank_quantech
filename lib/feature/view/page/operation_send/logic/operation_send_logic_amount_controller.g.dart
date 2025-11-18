// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_send_logic_amount_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(operationSendAmountController)
const operationSendAmountControllerProvider =
    OperationSendAmountControllerProvider._();

final class OperationSendAmountControllerProvider
    extends
        $FunctionalProvider<
          TextEditingController,
          TextEditingController,
          TextEditingController
        >
    with $Provider<TextEditingController> {
  const OperationSendAmountControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'operationSendAmountControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$operationSendAmountControllerHash();

  @$internal
  @override
  $ProviderElement<TextEditingController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TextEditingController create(Ref ref) {
    return operationSendAmountController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TextEditingController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TextEditingController>(value),
    );
  }
}

String _$operationSendAmountControllerHash() =>
    r'2aec9ea7f4a8a977eda4786d58f2b725f0c7a855';
