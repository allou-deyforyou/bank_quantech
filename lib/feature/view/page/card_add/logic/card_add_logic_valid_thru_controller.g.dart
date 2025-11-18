// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_add_logic_valid_thru_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cardAddValidThruController)
const cardAddValidThruControllerProvider =
    CardAddValidThruControllerProvider._();

final class CardAddValidThruControllerProvider
    extends
        $FunctionalProvider<
          TextEditingController,
          TextEditingController,
          TextEditingController
        >
    with $Provider<TextEditingController> {
  const CardAddValidThruControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardAddValidThruControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cardAddValidThruControllerHash();

  @$internal
  @override
  $ProviderElement<TextEditingController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TextEditingController create(Ref ref) {
    return cardAddValidThruController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TextEditingController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TextEditingController>(value),
    );
  }
}

String _$cardAddValidThruControllerHash() =>
    r'377afd2203644baf18602064d94aeab8ed0a8e88';

@ProviderFor(cardAddValidThruDate)
const cardAddValidThruDateProvider = CardAddValidThruDateProvider._();

final class CardAddValidThruDateProvider
    extends $FunctionalProvider<DateTime, DateTime, DateTime>
    with $Provider<DateTime> {
  const CardAddValidThruDateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardAddValidThruDateProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          cardAddValidThruControllerProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          CardAddValidThruDateProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = cardAddValidThruControllerProvider;

  @override
  String debugGetCreateSourceHash() => _$cardAddValidThruDateHash();

  @$internal
  @override
  $ProviderElement<DateTime> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DateTime create(Ref ref) {
    return cardAddValidThruDate(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime>(value),
    );
  }
}

String _$cardAddValidThruDateHash() =>
    r'113f775736069d1cf7484f912161fd508256c940';
