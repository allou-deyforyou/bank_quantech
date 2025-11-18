part of 'statistics_widget.dart';

class StatisticsTransactionsSliverList extends StatelessWidget {
  const StatisticsTransactionsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(child: StatisticsTransactionsCategoryItemWidget()),
        SliverToBoxAdapter(child: StatisticsTransactionsCategoryItemWidget()),
        SliverToBoxAdapter(child: StatisticsTransactionsCategoryItemWidget()),
      ],
    );
  }
}

class StatisticsTransactionsCategoryItemWidget extends StatelessWidget {
  const StatisticsTransactionsCategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ExpansionTile(
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
      title: Text("Shopping"),
      children: [
        const StatisticsTransactionsItemWidget(),
        const StatisticsTransactionsItemWidget(),
        const StatisticsTransactionsItemWidget(),
      ],
    );
  }
}

class StatisticsTransactionsItemWidget extends StatelessWidget {
  const StatisticsTransactionsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ListTile(
      contentPadding: EdgeInsets.only(left: 72.0, right: 16.0),
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

      title: Text("Grocery Store"),
      subtitle: Text("Jun 10, 2024"),
      trailing: Text("- \$45.67"),
    );
  }

  VoidCallback _onTap(BuildContext context) {
    return () {
      // Navigator.of(context).pop();
    };
  }
}
