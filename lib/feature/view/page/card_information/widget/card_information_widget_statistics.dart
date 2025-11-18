part of 'card_information_widget.dart';

class CardInformationStatistics extends ConsumerWidget {
  const CardInformationStatistics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    // final categoryValues = ref.watch(cardInformationCategoryControllerProvider);
    // final categories = categoryValues.value ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          minTileHeight: 26.0,
          minVerticalPadding: 8.0,
          contentPadding: kTabLabelPadding.copyWith(right: 8.0),
          titleTextStyle: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.0,
          ),
          title: const Text("Statistics"),
        ),
        SafeArea(
          top: false,
          bottom: false,
          minimum: EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 146.0,
            child: Card(
              elevation: 0.0,
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAlias,
              color: theme.colorScheme.surfaceContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: InkWell(
                onTap: _onTap(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Center(child: Text("No Statistics Available"))],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  VoidCallback? _onTap(BuildContext context) {
    return () {
      // const StatisticsPageRoute().push(context);
    };
  }
}

class CardInformationCategoryItemWidget extends StatelessWidget {
  const CardInformationCategoryItemWidget({super.key, required this.label});

  final Widget label;

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
      title: label,
    );
  }
}
