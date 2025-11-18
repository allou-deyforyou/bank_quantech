part of 'card_information_widget.dart';

class CardInformationBalance extends ConsumerWidget {
  const CardInformationBalance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    final selectCard = ref.watch(cardAddSelectedCardProvider);
    // final account = selectCard.value.account!;
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
          Expanded(child: Text("\$ 0.00")),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "00% ",
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
