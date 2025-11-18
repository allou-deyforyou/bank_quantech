part of 'transactions_widget.dart';

class TransactionsSearchField extends StatelessWidget
    implements PreferredSizeWidget {
  const TransactionsSearchField({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kMinInteractiveDimension);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SafeArea(
      top: false,
      bottom: false,
      minimum: kTabLabelPadding,
      child: SizedBox(
        height: preferredSize.height,
        child: TextField(
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: theme.textTheme.bodyLarge!.copyWith(
              color: CupertinoColors.placeholderText.resolveFrom(context),
            ),
            suffixIcon: Icon(
              CupertinoIcons.search,
              color: CupertinoColors.placeholderText.resolveFrom(context),
            ),
          ),
        ),
      ),
    );
  }
}
