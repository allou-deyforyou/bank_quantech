import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'card_add_logic_valid_thru_controller.g.dart';

@Riverpod()
TextEditingController cardAddValidThruController(Ref ref) {
  return ref.disposeNotifier(TextEditingController());
}


@Riverpod(
  dependencies: [
    cardAddValidThruController,
  ],
)
DateTime cardAddValidThruDate(Ref ref) {
  final text = ref.read(cardAddValidThruControllerProvider).text;

  final parts = text.split('/');
  if (parts.length != 2) {
    throw FormatException('Invalid expiry date format');
  }
  final month = int.parse(parts[0].trim());
  final year = int.parse(parts[1].trim());
  if (month < 1 || month > 12) {
    throw FormatException('Invalid month in expiry date');
  }
  final currentYear = DateTime.now().year % 100;
  final fullYear = (year >= currentYear ? 2000 : 2100) + year;
  return DateTime(fullYear, month);
}
