import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'card_add_logic_cvv_controller.g.dart';

@Riverpod()
TextEditingController cardAddCvvController(Ref ref) {
  return ref.disposeNotifier(TextEditingController());
}
