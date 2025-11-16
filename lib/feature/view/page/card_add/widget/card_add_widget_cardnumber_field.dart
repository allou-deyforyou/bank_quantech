part of 'card_add_widget.dart';

class CardAddCardNumberField extends StatelessWidget {
  const CardAddCardNumberField({super.key});

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
          title: const Text("Card Number"),
        ),
        SafeArea(
          top: false,
          bottom: false,
          minimum: kTabLabelPadding,
          child: SizedBox(
            height: kMinInteractiveDimension,
            child: TextFormField(
              keyboardType: TextInputType.number,
              autofillHints: [
                AutofillHints.creditCardNumber,
              ],
              inputFormatters: [],
              decoration: InputDecoration(
                hintText: 'Ex: 1234 5678 9012 3456',
                hintStyle: theme.textTheme.bodyLarge!.copyWith(
                  color: CupertinoColors.placeholderText.resolveFrom(context),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 6.0),
      ],
    );
  }
}
