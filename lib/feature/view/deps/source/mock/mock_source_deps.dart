import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'mock_source_deps.g.dart';

@Riverpod(keepAlive: true)
MockDataSource mockDataSource(Ref ref) {
  final source = MockDataSource();
  ref.onDispose(source.dispose);
  return source;
}
