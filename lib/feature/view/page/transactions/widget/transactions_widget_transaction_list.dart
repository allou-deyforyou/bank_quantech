part of 'transactions_widget.dart';

class TransactionsSliverList extends StatelessWidget {
  const TransactionsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverPadding(
          padding: kMaterialListPadding,
          sliver: SliverList.builder(
            itemBuilder: (context, index) {
              return const TransactionsWidget();
            },
          ),
        ),
      ],
    );
  }
}

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ListTile(
      titleTextStyle: theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
        letterSpacing: 0.0,
      ),
      subtitleTextStyle: theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w400,
      ),
      leadingAndTrailingTextStyle: theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
      ),
      onTap: _onTap(context),
      leading: Container(
        width: kMinInteractiveDimensionCupertino,
        height: kMinInteractiveDimensionCupertino,
        decoration: ShapeDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: IconTheme(
          data: IconThemeData(
            color: theme.colorScheme.onSurfaceVariant,
            size: 22.0,
          ),
          child: Icon(Icons.shopping_cart_rounded),
        ),
      ),
      title: Text("Grocery Store"),
      subtitle: Text("Jun 10, 2024"),
      trailing: Text("- \$45.67"),
    );
  }

  VoidCallback _onTap(BuildContext context) {
    return () {
      const TransactionsDetailsPageRoute().push(context);
    };
  }
}
