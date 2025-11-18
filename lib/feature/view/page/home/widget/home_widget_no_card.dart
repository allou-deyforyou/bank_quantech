part of 'home_widget.dart';

class HomeNoCardSliverWrapper extends ConsumerWidget {
  const HomeNoCardSliverWrapper({super.key, required this.sliver});

  final Widget sliver;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardsValue = ref.watch(homeCardControllerProvider);
    if (cardsValue.isLoading) {
      return const SliverToBoxAdapter();
    }
    final cards = cardsValue.value;
    if (cards != null && cards.isEmpty) {
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: HomeNoCard(),
      );
    }
    return sliver;
  }
}

class HomeNoCard extends StatelessWidget {
  const HomeNoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 0.8,
          child: Card(
            elevation: 0.0,
            margin: EdgeInsets.zero,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
            ),
            child: SizedBox(
              width: 300.0,
              height: 165.0,
              child: CreditCardView(color: Colors.grey.shade400),
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        const Text(
          "No Cards Available",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 16.0),
        const HomeNoCardAddCardButton(),
      ],
    );
  }
}

class HomeNoCardAddCardButton extends StatelessWidget {
  const HomeNoCardAddCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: kTabLabelPadding,
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
          maximumSize: const Size.fromHeight(kMinInteractiveDimensionCupertino),
          textStyle: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.0,
          ),
        ),
        onPressed: _onPressed(context),
        label: const Text("Add Your First Card"),
        icon: const Icon(CupertinoIcons.add),
      ),
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return () {
      const CardAddPageRoute().push(context);
    };
  }
}
