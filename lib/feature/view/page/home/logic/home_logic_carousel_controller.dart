import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:bank_quantech/feature/feature.dart';

part 'home_logic_carousel_controller.g.dart';

@Riverpod()
CarouselController homeCarouselController(Ref ref) {
  return ref.disposeNotifier(CarouselController());
}
