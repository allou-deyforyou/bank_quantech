part of 'home_widget.dart';

class HomeTransactionsSliverList extends ConsumerWidget {
  const HomeTransactionsSliverList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionsValue = ref.watch(homeTransactionControllerProvider);
    final transactions = transactionsValue.value ?? [];
    return SliverMainAxisGroup(
      slivers: [
        const SliverToBoxAdapter(child: HomeTransactionsLabelButton()),
        SliverVisibility(
          visible: transactions.isNotEmpty,
          replacementSliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                "No recent activities",
                style: context.theme.textTheme.bodyLarge,
              ),
            ),
          ),
          sliver: SliverList.builder(
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return HomeTransactionsWidget(transaction: transaction);
            },
            itemCount: transactions.length,
          ),
        ),
      ],
    );
  }
}

class HomeTransactionsLabelButton extends StatelessWidget {
  const HomeTransactionsLabelButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ListTile(
      minTileHeight: 26.0,
      minVerticalPadding: 8.0,
      contentPadding: kTabLabelPadding.copyWith(right: 8.0),
      titleTextStyle: theme.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w500,
        letterSpacing: 0.0,
      ),
      title: const Text("Recent Activities"),
      trailing: IconButton(
        tooltip: "See All",
        onPressed: _onPressed(context),
        style: IconButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        icon: Icon(Icons.chevron_right_rounded),
      ),
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return null;
    // return () {
    //   // const TransactionsPageRoute().push(context);
    // };
  }
}

class HomeTransactionsWidget extends StatelessWidget {
  const HomeTransactionsWidget({super.key, required this.transaction});

  final TransactionEntity transaction;

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
          color: theme.colorScheme.surfaceContainer,
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

  VoidCallback? _onTap(BuildContext context) {
    return null;
  }
}
