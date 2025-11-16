part of 'card_information_widget.dart';

class CardInformationCardCarousel extends StatelessWidget {
  const CardInformationCardCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Swiper(
          itemCount: 3,
          itemWidth: 300.0,
          itemHeight: 200.0,
          layout: SwiperLayout.STACK,
          itemBuilder: (context, index) {
            final children = [
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.orange),
            ];
            return children[index];
          },
        ),
      ),
    );
  }
}
