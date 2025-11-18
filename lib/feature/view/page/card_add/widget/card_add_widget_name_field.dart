part of 'card_add_widget.dart';

class CardAddNameField extends StatelessWidget {
  const CardAddNameField({super.key});

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
          title: const Text("Name"),
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
                    final controller = ref.watch(cardAddNameControllerProvider);
                    return TextFormField(
                      controller: controller,
                      keyboardType: TextInputType.name,
                      autofillHints: [
                        AutofillHints.name,
                        AutofillHints.nickname,
                        AutofillHints.familyName,
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        if (value.length < 2) {
                          return 'Name must be at least 2 characters long';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Ex: John Doe',
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
