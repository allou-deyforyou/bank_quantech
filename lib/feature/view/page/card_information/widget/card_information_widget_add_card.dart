part of 'card_information_widget.dart';

class CardInformationAddCard extends StatelessWidget {
  const CardInformationAddCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ListTile(
      titleTextStyle: theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
        letterSpacing: 0.0,
      ),
      subtitleTextStyle: theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSurfaceVariant,
        letterSpacing: 0.0,
      ),
      title: const Text("Card List"),
      subtitle: const Text("You have no cards added."),
      trailing: const CardInformationAddCardButton(),
    );
  }
}

class CardInformationAddCardButton extends StatelessWidget {
  const CardInformationAddCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return FilledButton.tonalIcon(
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: theme.colorScheme.surfaceContainer,
        foregroundColor: theme.colorScheme.onSurfaceVariant,
        iconAlignment: IconAlignment.end,
        shape: const StadiumBorder(),
      ),
      onPressed: _onPressed(context),
      label: const Text("Add new Card"),
      icon: const Icon(Icons.add),
    );
  }

  VoidCallback _onPressed(BuildContext context) {
    return () {
      CardAddPageRoute().push(context);
    };
  }
}
