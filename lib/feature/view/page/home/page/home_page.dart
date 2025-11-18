import 'package:flutter/material.dart';

import 'package:bank_quantech/feature/feature.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          HomeSliverAppbar(),
          HomeNoCardSliverWrapper(
            sliver: SliverMainAxisGroup(
              slivers: [
                SliverToBoxAdapter(child: HomeCardCarousel()),
                SliverToBoxAdapter(child: HomeActionButtons()),
                HomeTransactionsSliverList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
