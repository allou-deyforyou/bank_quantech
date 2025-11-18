// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_add_logic_cardnumber_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cardAddCardNumberController)
const cardAddCardNumberControllerProvider =
    CardAddCardNumberControllerProvider._();

final class CardAddCardNumberControllerProvider
    extends
        $FunctionalProvider<
          TextEditingController,
          TextEditingController,
          TextEditingController
        >
    with $Provider<TextEditingController> {
  const CardAddCardNumberControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardAddCardNumberControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cardAddCardNumberControllerHash();

  @$internal
  @override
  $ProviderElement<TextEditingController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TextEditingController create(Ref ref) {
    return cardAddCardNumberController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TextEditingController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TextEditingController>(value),
    );
  }
}

String _$cardAddCardNumberControllerHash() =>
    r'41116b84f64985b16156ec9e06bfdc66ec8bb7e3';
