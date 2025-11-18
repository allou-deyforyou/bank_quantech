import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'operation_receive_logic_amount_controller.g.dart';

@Riverpod()
TextEditingController operationReceiveAmountController(Ref ref) {
  return ref.disposeNotifier(TextEditingController());
}
