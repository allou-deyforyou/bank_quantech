part of 'card_add_widget.dart';

class CardAddCvvField extends StatelessWidget {
  const CardAddCvvField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      children: [
        ListTile(
          minTileHeight: 24.0,
          minVerticalPadding: 4.0,
          contentPadding: kTabLabelPadding.copyWith(left: 0.0),
          titleTextStyle: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.0,
          ),
          title: const Text("CVV"),
        ),
        SafeArea(
          top: false,
          bottom: false,
          minimum: kTabLabelPadding.copyWith(left: 0.0),
          child: SizedBox(
            height: kMinInteractiveDimension + 13.0,
            child: Column(
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final controller = ref.watch(cardAddCvvControllerProvider);
                    return TextFormField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      autofillHints: [AutofillHints.creditCardSecurityCode],
                      inputFormatters: [
                        MaskTextInputFormatter(
                          type: MaskAutoCompletionType.eager,
                          filter: {"#": RegExp(r'[0-9]')},
                          mask: '###',
                        ),
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid CVV';
                        }
                        if (!RegExp(r'^[0-9]{3,4}$').hasMatch(value)) {
                          return 'CVV must be 3 or 4 digits';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Ex: 123',
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
