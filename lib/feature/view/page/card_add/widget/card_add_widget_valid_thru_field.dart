part of 'card_add_widget.dart';

class CardAddValidThruField extends StatelessWidget {
  const CardAddValidThruField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      children: [
        ListTile(
          minTileHeight: 24.0,
          minVerticalPadding: 4.0,
          contentPadding: kTabLabelPadding.copyWith(right: 0.0),
          titleTextStyle: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.0,
          ),
          title: const Text("Valid Thru"),
        ),
        SafeArea(
          top: false,
          bottom: false,
          minimum: kTabLabelPadding.copyWith(right: 0.0),
          child: SizedBox(
            height: kMinInteractiveDimension + 13.0,
            child: Column(
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final controller = ref.watch(
                      cardAddValidThruControllerProvider,
                    );
                    return TextFormField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      autofillHints: [AutofillHints.creditCardExpirationDate],
                      inputFormatters: [
                        MaskTextInputFormatter(
                          type: MaskAutoCompletionType.eager,
                          filter: {"#": RegExp(r'[0-9]')},
                          mask: '##/##',
                        ),
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid date';
                        }
                        if (!RegExp(
                          r'^(0[1-9]|1[0-2])\/?([0-9]{2})$',
                        ).hasMatch(value)) {
                          return 'Please enter a valid date in MM/YY format';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Ex: 12/34',
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
