import 'package:flutter/material.dart';

import 'package:bank_quantech/feature/feature.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          StatisticsSliverAppbar(),
          SliverToBoxAdapter(child: StatisticsCategoryCard()),
          SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          StatisticsTransactionsSliverList(),
        ],
      ),
    );
  }
}
