// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_add_logic_selected_color_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cardAddAvailableColors)
const cardAddAvailableColorsProvider = CardAddAvailableColorsProvider._();

final class CardAddAvailableColorsProvider
    extends $FunctionalProvider<List<Color>, List<Color>, List<Color>>
    with $Provider<List<Color>> {
  const CardAddAvailableColorsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardAddAvailableColorsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cardAddAvailableColorsHash();

  @$internal
  @override
  $ProviderElement<List<Color>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Color> create(Ref ref) {
    return cardAddAvailableColors(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Color> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Color>>(value),
    );
  }
}

String _$cardAddAvailableColorsHash() =>
    r'a293c4ce866ee3a5e936be7dae3939203baf4e57';

@ProviderFor(CardAddSelectedColor)
const cardAddSelectedColorProvider = CardAddSelectedColorProvider._();

final class CardAddSelectedColorProvider
    extends $NotifierProvider<CardAddSelectedColor, Color> {
  const CardAddSelectedColorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardAddSelectedColorProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[cardAddAvailableColorsProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          CardAddSelectedColorProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = cardAddAvailableColorsProvider;

  @override
  String debugGetCreateSourceHash() => _$cardAddSelectedColorHash();

  @$internal
  @override
  CardAddSelectedColor create() => CardAddSelectedColor();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Color value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Color>(value),
    );
  }
}

String _$cardAddSelectedColorHash() =>
    r'9cd1486927885f94c10ff8df09065798d12f0ed1';

abstract class _$CardAddSelectedColor extends $Notifier<Color> {
  Color build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Color, Color>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Color, Color>,
              Color,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
