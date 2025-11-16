import 'package:flutter/material.dart';

import 'package:bank_quantech/feature/feature.dart';

class CardInformationPage extends StatelessWidget {
  const CardInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CardInformationSliverAppbar(),
          SliverToBoxAdapter(child: CardInformationAddCard()),
          SliverToBoxAdapter(child: CardInformationCardCarousel()),
          SliverToBoxAdapter(child: CardInformationBalance()),
          SliverToBoxAdapter(child: CardInformationFeatures()),
          SliverToBoxAdapter(child: CardInformationStatistics()),
        ],
      ),
    );
  }
}
