// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_logic_carousel_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(homeCarouselController)
const homeCarouselControllerProvider = HomeCarouselControllerProvider._();

final class HomeCarouselControllerProvider
    extends
        $FunctionalProvider<
          CarouselController,
          CarouselController,
          CarouselController
        >
    with $Provider<CarouselController> {
  const HomeCarouselControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeCarouselControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeCarouselControllerHash();

  @$internal
  @override
  $ProviderElement<CarouselController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CarouselController create(Ref ref) {
    return homeCarouselController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CarouselController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CarouselController>(value),
    );
  }
}

String _$homeCarouselControllerHash() =>
    r'7dcf5f9a429b28c327f3618411c12cfff90d0f18';
