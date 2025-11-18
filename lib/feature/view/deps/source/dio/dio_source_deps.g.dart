// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_source_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dioDataSource)
const dioDataSourceProvider = DioDataSourceProvider._();

final class DioDataSourceProvider
    extends $FunctionalProvider<DioDataSource, DioDataSource, DioDataSource>
    with $Provider<DioDataSource> {
  const DioDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioDataSourceHash();

  @$internal
  @override
  $ProviderElement<DioDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DioDataSource create(Ref ref) {
    return dioDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioDataSource>(value),
    );
  }
}

String _$dioDataSourceHash() => r'578fba38b6deb5bcbf50b8262194ea7cdbfeac19';
