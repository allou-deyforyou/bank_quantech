part of 'home_widget.dart';

class HomeCardCarousel extends StatelessWidget {
  const HomeCardCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final deviceWitdh = MediaQuery.sizeOf(context).width;
    final itemExtent = deviceWitdh - kTabLabelPadding.horizontal;
    return SafeArea(
      top: false,
      bottom: false,
      child: Column(
        children: [
          ListTile(
            minTileHeight: 26.0,
            minVerticalPadding: 8.0,
            contentPadding: kTabLabelPadding,
            titleTextStyle: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
            title: const Text("Your Cards"),
          ),
          SizedBox(
            height: 165.0,
            child: Consumer(
              builder: (context, ref, child) {
                ref.watch(homeSelectedCardProvider);
                final controller = ref.watch(homeCarouselControllerProvider);
                final cardsValue = ref.watch(homeCardControllerProvider);
                final cards = cardsValue.requireValue;
                if (cards.length == 1) {
                  return Center(
                    child: Card(
                      elevation: 0.0,
                      margin: kTabLabelPadding,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                      child: InkWell(
                        onTap: () => _onTap(context)?.call(0),
                        child: CreditCardView(color: cards.first.cardColor),
                      ),
                    ),
                  );
                }

                return CarouselView(
                  itemSnapping: true,
                  itemExtent: itemExtent,
                  shrinkExtent: itemExtent,
                  padding: kTabLabelPadding,
                  controller: controller,
                  onTap: _onTap(context),
                  children: List<Widget>.of(
                    cards.map((card) {
                      return CreditCardView(color: card.cardColor);
                    }),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  ValueChanged<int>? _onTap(BuildContext context) {
    final ref = ProviderScope.containerOf(context);
    final selectedCard = ref.read(homeSelectedCardProvider);
    return (index) {
      final cardsValue = ref.read(homeCardControllerProvider);
      final cards = cardsValue.requireValue;
      final card = cards[index];
      selectedCard.value = card;

      CardInformationPageRoute({
        CardInformationPageRoute.cardKey: card,
      }).push(context);
    };
  }
}
