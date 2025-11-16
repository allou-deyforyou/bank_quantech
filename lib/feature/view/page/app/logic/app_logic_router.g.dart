// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_logic_router.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appRouter)
const appRouterProvider = AppRouterProvider._();

final class AppRouterProvider
    extends
        $FunctionalProvider<AsyncValue<GoRouter>, GoRouter, FutureOr<GoRouter>>
    with $FutureModifier<GoRouter>, $FutureProvider<GoRouter> {
  const AppRouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appRouterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appRouterHash();

  @$internal
  @override
  $FutureProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<GoRouter> create(Ref ref) {
    return appRouter(ref);
  }
}

String _$appRouterHash() => r'83f0f9551a8b93900e349c741ba38a153c135faa';
