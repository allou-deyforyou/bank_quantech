import 'package:flutter/material.dart';

import 'package:bank_quantech/feature/feature.dart';

class TransactionsDetailsPage extends StatelessWidget {
  const TransactionsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(slivers: [TransactionsDetailsSliverAppbar()]),
    );
  }
}
