import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'card_add_logic_selected_color_controller.g.dart';

@Riverpod()
List<Color> cardAddAvailableColors(Ref ref) {
  return [
    Color(0xFF1E88E5), // Blue
    Color(0xFF7B1FA2), // Purple
    Color(0xFFFBC02D), // Yellow
  ];
}

@Riverpod(dependencies: [cardAddAvailableColors])
class CardAddSelectedColor extends _$CardAddSelectedColor {
  @override
  Color build() {
    final colors = ref.watch(cardAddAvailableColorsProvider);
    return colors.first;
  }

  void selectColor(Color color) {
    state = color;
  }
}
