import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'card_add_logic_cardnumber_controller.g.dart';

@Riverpod()
TextEditingController cardAddCardNumberController(Ref ref) {
  return ref.disposeNotifier(TextEditingController());
}
