part of 'card_add_widget.dart';

class CardAddCardView extends ConsumerWidget {
  const CardAddCardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedColor = ref.watch(cardAddSelectedColorProvider);
    return SafeArea(
      top: false,
      bottom: false,
      minimum: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 0.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
        child: SizedBox(
          height: 165.0,
          width: double.infinity,
          child: CreditCardView(color: selectedColor),
        ),
      ),
    );
  }
}
