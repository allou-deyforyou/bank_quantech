part of 'card_add_widget.dart';

class CardAddCardView extends StatelessWidget {
  const CardAddCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      minimum: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 0.0,
        color: CupertinoColors.activeBlue.resolveFrom(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
        ),
        child: SizedBox(height: 165.0, width: double.infinity),
      ),
    );
  }
}
