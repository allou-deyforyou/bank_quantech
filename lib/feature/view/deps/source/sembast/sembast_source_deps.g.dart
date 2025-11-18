// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sembast_source_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sembastDataSource)
const sembastDataSourceProvider = SembastDataSourceProvider._();

final class SembastDataSourceProvider
    extends
        $FunctionalProvider<
          SembastDataSource,
          SembastDataSource,
          SembastDataSource
        >
    with $Provider<SembastDataSource> {
  const SembastDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sembastDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sembastDataSourceHash();

  @$internal
  @override
  $ProviderElement<SembastDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SembastDataSource create(Ref ref) {
    return sembastDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SembastDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SembastDataSource>(value),
    );
  }
}

String _$sembastDataSourceHash() => r'3a710b15fd9d89b61540bf141e921a3c81020b6d';
