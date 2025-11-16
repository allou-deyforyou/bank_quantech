part of 'home_widget.dart';

class HomeTransactionsSliverList extends StatelessWidget {
  const HomeTransactionsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        const SliverToBoxAdapter(child: HomeTransactionsLabelButton()),
        SliverList.builder(
          itemBuilder: (context, index) {
            return const HomeTransactionsWidget();
          },
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
    return () {
      // Navigator.of(context).pop();
    };
  }
}

class HomeTransactionsWidget extends StatelessWidget {
  const HomeTransactionsWidget({super.key});

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
      // Navigator.of(context).pop();
    };
  }
}
