import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'sembast_source_deps.g.dart';

@Riverpod(keepAlive: true)
SembastDataSource sembastDataSource(Ref ref) {
  final source = SembastDataSource();
  ref.onDispose(source.dispose);
  return source;
}
