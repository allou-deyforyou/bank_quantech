part of 'card_information_widget.dart';

class CardInformationStatistics extends StatelessWidget {
  const CardInformationStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: InkWell(
                onTap: _onTap(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Statistics Chart Placeholder")],
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
      const StatisticsPageRoute().push(context);
    };
  }
}
