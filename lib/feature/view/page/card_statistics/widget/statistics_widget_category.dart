part of 'statistics_widget.dart';

class StatisticsCategoryCard extends StatelessWidget {
  const StatisticsCategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      minimum: EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          child: Column(
            children: [
              SizedBox(height: 120.0),
              SizedBox(height: 16.0),
              Column(
                children: [
                  StatisticsCategoryItemWidget(),
                  StatisticsCategoryItemWidget(),
                  StatisticsCategoryItemWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatisticsCategoryItemWidget extends StatelessWidget {
  const StatisticsCategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ListTile(
      minTileHeight: 26.0,
      minVerticalPadding: 6.0,
      horizontalTitleGap: 14.0,
      contentPadding: kTabLabelPadding,
      titleTextStyle: theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w500,
        letterSpacing: 0.0,
      ),
      leadingAndTrailingTextStyle: theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w500,
      ),
      leading: Icon(
        CupertinoIcons.circle_filled,
        size: 18.0,
        color: Colors.blue,
      ),
      title: const Text("Shopping"),
      trailing: Text("\$45.67"),
    );
  }
}
