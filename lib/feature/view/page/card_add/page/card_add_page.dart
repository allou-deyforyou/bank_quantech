import 'package:flutter/material.dart';

import 'package:bank_quantech/feature/feature.dart';

class CardAddPage extends StatelessWidget {
  const CardAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CardAddSubmitButtons(),
      body: CustomScrollView(
        slivers: [
          CardAddSliverAppbar(),
          SliverToBoxAdapter(child: CardAddCardView()),
          SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          SliverToBoxAdapter(child: CardAddColorField()),
          SliverToBoxAdapter(child: CardAddNameField()),
          SliverToBoxAdapter(child: CardAddCardNumberField()),
          SliverCrossAxisGroup(
            slivers: [
              SliverToBoxAdapter(child: CardAddValidThruField()),
              SliverConstrainedCrossAxis(
                maxExtent: 16.0,
                sliver: SliverToBoxAdapter(),
              ),
              SliverToBoxAdapter(child: CardAddCvvField()),
            ],
          ),
        ],
      ),
    );
  }
}
