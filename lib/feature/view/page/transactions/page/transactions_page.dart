import 'package:flutter/material.dart';

import 'package:bank_quantech/feature/feature.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          TransactionsSliverAppbar(), //
          TransactionsSliverList(),
        ],
      ),
    );
  }
}
