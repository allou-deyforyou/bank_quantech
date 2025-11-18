// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_add_logic_cvv_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cardAddCvvController)
const cardAddCvvControllerProvider = CardAddCvvControllerProvider._();

final class CardAddCvvControllerProvider
    extends
        $FunctionalProvider<
          TextEditingController,
          TextEditingController,
          TextEditingController
        >
    with $Provider<TextEditingController> {
  const CardAddCvvControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardAddCvvControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cardAddCvvControllerHash();

  @$internal
  @override
  $ProviderElement<TextEditingController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TextEditingController create(Ref ref) {
    return cardAddCvvController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TextEditingController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TextEditingController>(value),
    );
  }
}

String _$cardAddCvvControllerHash() =>
    r'd589cfdbf4b1f0bb86a0ac06c63d10a20555ca6b';
