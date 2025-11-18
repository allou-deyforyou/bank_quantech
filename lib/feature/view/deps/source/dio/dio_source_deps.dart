import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'dio_source_deps.g.dart';

@Riverpod(keepAlive: true)
DioDataSource dioDataSource(Ref ref) {
  final source = DioDataSource();
  ref.onDispose(source.dispose);
  return source;
}
