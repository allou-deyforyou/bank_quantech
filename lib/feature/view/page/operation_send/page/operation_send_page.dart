import 'package:flutter/material.dart';

import 'package:bank_quantech/feature/feature.dart';

class OperationSendPage extends StatelessWidget {
  const OperationSendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Scaffold(
        bottomNavigationBar: OperationSendSubmitButtons(),
        body: CustomScrollView(
          slivers: [
            OperationSendSliverAppbar(),
            SliverToBoxAdapter(child: OperationSendAmountField()),
          ],
        ),
      ),
    );
  }
}
