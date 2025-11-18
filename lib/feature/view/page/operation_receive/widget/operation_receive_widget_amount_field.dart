part of 'operation_receive_widget.dart';

class OperationReceiveAmountField extends StatelessWidget {
  const OperationReceiveAmountField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      children: [
        ListTile(
          minTileHeight: 24.0,
          minVerticalPadding: 4.0,
          contentPadding: kTabLabelPadding.copyWith(right: 8.0),
          titleTextStyle: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.0,
          ),
          title: const Text("Amount"),
        ),
        SafeArea(
          top: false,
          bottom: false,
          minimum: kTabLabelPadding,
          child: SizedBox(
            height: kMinInteractiveDimension + 13.0,
            child: Column(
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    // final controller = ref.watch(
                    //   cardAddCardNumberControllerProvider,
                    // );
                    return TextFormField(
                      // controller: controller,
                      keyboardType: TextInputType.number,
                      autofillHints: [AutofillHints.transactionAmount],
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an amount';
                        }
                        final amount = double.tryParse(value);
                        if (amount == null || amount <= 0) {
                          return 'Please enter a valid amount';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffix: Text("\$"),
                        hintText: '00.00',
                        hintStyle: theme.textTheme.bodyLarge!.copyWith(
                          color: CupertinoColors.placeholderText.resolveFrom(
                            context,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
