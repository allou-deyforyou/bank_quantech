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
            height: kMinInteractiveDimension + 13.0,
            child: Column(
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final controller = ref.watch(
                      cardAddCardNumberControllerProvider,
                    );
                    return TextFormField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      autofillHints: [AutofillHints.creditCardNumber],
                      inputFormatters: [
                          MaskTextInputFormatter(
                          type: MaskAutoCompletionType.eager,
                          filter: {"#": RegExp(r'[0-9]')},
                          mask: '#### ####',
                        ),
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid card number';
                        }
                        if (!RegExp(
                          r'^[0-9]{8,19}$',
                        ).hasMatch(value.replaceAll(' ', ''))) {
                          return 'Card number must be between 8 and 19 digits';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Ex: 1234 5678',
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
