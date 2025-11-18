import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'card_add_logic_name_controller.g.dart';

@Riverpod()
TextEditingController cardAddNameController(Ref ref) {
  return ref.disposeNotifier(TextEditingController());
}
