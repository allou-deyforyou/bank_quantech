import 'package:flutter/material.dart';

import 'package:bank_quantech/feature/feature.dart';

class OperationReceivePage extends StatelessWidget {
  const OperationReceivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Scaffold(
        bottomNavigationBar: OperationReceiveSubmitButtons(),
        body: CustomScrollView(
          slivers: [
            OperationReceiveSliverAppbar(),
            SliverToBoxAdapter(child: OperationReceiveAmountField()),
          ],
        ),
      ),
    );
  }
}
