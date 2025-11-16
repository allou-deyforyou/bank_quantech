part of 'card_information_widget.dart';

class CardInformationFeatures extends StatelessWidget {
  const CardInformationFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      bottom: false,
      minimum: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        spacing: 12.0,
        children: [
          Expanded(child: CardInformationEarnCard()),
          Expanded(child: CardInformationSpendCard()),
        ],
      ),
    );
  }
}

class CardInformationEarnCard extends StatelessWidget {
  const CardInformationEarnCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SizedBox(
      height: 146.0,
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          children: [
            ListTile(
              minVerticalPadding: 0.0,
              minTileHeight: kMinInteractiveDimension,
              titleTextStyle: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.0,
                height: 2.0,
              ),
              subtitleTextStyle: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.0,
              ),
              title: const Text("Earn"),
              subtitle: const Text("\$ 1,250.00"),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}

class CardInformationSpendCard extends StatelessWidget {
  const CardInformationSpendCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SizedBox(
      height: 146.0,
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          children: [
            ListTile(
              minVerticalPadding: 0.0,
              minTileHeight: kMinInteractiveDimension,
              titleTextStyle: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.0,
                height: 2.0,
              ),
              subtitleTextStyle: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.0,
              ),
              title: const Text("Spend"),
              subtitle: const Text("\$ 1,250.00"),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
