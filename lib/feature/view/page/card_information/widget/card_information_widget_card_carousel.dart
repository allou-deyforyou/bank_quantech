part of 'card_information_widget.dart';

class CardInformationCardCarousel extends ConsumerWidget {
  const CardInformationCardCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardsValue = ref.watch(cardInformationCardControllerProvider);
    final cards = cardsValue.value ?? [];

    return SizedBox(
      height: 200.0,
      child: cards.isEmpty
          ? const Card(
              elevation: 0.0,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
              ),
            )
          : StackedListCarousel(
              disableAutomaticLoop: true,
              outermostCardHeightFactor: 0.9,
              behavior: CarouselBehavior.loop,
              alignment: StackedListAxisAlignment.top,
              items: cards,
              cardSwipedCallback: (item, direction) {
                _onCardChanged(context);
              },
              cardBuilder: (context, value, size) {
                return Card(
                  elevation: 0.0,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                  child: CreditCardView(color: value.cardColor),
                );
              },
            ),
    );
  }

  ValueChanged<CreditCardEntity>? _onCardChanged(BuildContext context) {
    final ref = ProviderScope.containerOf(context);
    final controller = ref.read(cardAddSelectedCardProvider);
    return (card) {
      controller.value = card;
    };
  }
}
