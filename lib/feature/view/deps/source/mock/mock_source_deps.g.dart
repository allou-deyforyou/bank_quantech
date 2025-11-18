// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_source_deps.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(mockDataSource)
const mockDataSourceProvider = MockDataSourceProvider._();

final class MockDataSourceProvider
    extends $FunctionalProvider<MockDataSource, MockDataSource, MockDataSource>
    with $Provider<MockDataSource> {
  const MockDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockDataSourceHash();

  @$internal
  @override
  $ProviderElement<MockDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MockDataSource create(Ref ref) {
    return mockDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MockDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MockDataSource>(value),
    );
  }
}

String _$mockDataSourceHash() => r'26d0efe38393cd9bcf940398c43913af516a78ca';
