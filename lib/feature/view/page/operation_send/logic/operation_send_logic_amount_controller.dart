import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'operation_send_logic_amount_controller.g.dart';

@Riverpod()
TextEditingController operationSendAmountController(Ref ref) {
  return ref.disposeNotifier(TextEditingController());
}
