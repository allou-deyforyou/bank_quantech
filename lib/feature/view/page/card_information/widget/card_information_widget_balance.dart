part of 'card_information_widget.dart';

class CardInformationBalance extends StatelessWidget {
  const CardInformationBalance({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ListTile(
      titleTextStyle: theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSurfaceVariant,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        height: 1.5,
      ),
      subtitleTextStyle: theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSurface,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.0,
      ),
      title: const Text("Total Balance"),
      subtitle: Row(
        children: [
          const Expanded(child: Text("\$ 65,430.00")),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "20% ",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.0,
                  ),
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(
                    Icons.arrow_upward_rounded,
                    size: 16.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
