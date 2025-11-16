part of 'home_widget.dart';

class HomeCardCarousel extends StatelessWidget {
  const HomeCardCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
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
            child: CarouselView(
              itemExtent: 320.0,
              itemSnapping: true,
              shrinkExtent: 320.0,
              padding: kTabLabelPadding,
              controller: CarouselController(),
              onTap: _onTap(context),
              children: [
                Container(color: Colors.blue),
                Container(color: Colors.yellow),
                Container(color: Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ValueChanged<int>? _onTap(BuildContext context) {
    return (index) {
      CardInformationPageRoute().push(context);
    };
  }
}
