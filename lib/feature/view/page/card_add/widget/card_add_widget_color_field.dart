part of 'card_add_widget.dart';

class CardAddColorField extends StatelessWidget {
  const CardAddColorField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      children: [
        ListTile(
          minTileHeight: 24.0,
          minVerticalPadding: 4.0,
          contentPadding: kTabLabelPadding.copyWith(right: 8.0),
          titleTextStyle: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.0,
          ),
          title: const Text("Color"),
        ),
        SafeArea(
          top: false,
          bottom: false,
          minimum: kTabLabelPadding,
          child: Consumer(
            builder: (context, ref, child) {
              final availableColors = ref.watch(cardAddAvailableColorsProvider);
              final selectedColor = ref.watch(cardAddSelectedColorProvider);
              return Row(
                spacing: 12.0,
                children: List.of(
                  availableColors.map((color) {
                    return CardAddColor(
                      color: color,
                      isSelected: color == selectedColor,
                      onTap: _onTap(context),
                    );
                  }),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 13.0),
      ],
    );
  }

  ValueChanged<Color>? _onTap(BuildContext context) {
    final ref = ProviderScope.containerOf(context);
    final controller = ref.read(cardAddSelectedColorProvider.notifier);
    return (color) {
      controller.selectColor(color);
    };
  }
}

class CardAddColor extends StatelessWidget {
  const CardAddColor({
    super.key,
    required this.color,
    this.isSelected = false,
    this.onTap,
  });

  final Color color;
  final bool isSelected;
  final ValueChanged<Color>? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final shape = CircleBorder(
      side: isSelected
          ? BorderSide(color: theme.colorScheme.onSurface, width: 3.0)
          : BorderSide(color: Colors.transparent, width: 3.0),
    );
    return InkWell(
      customBorder: shape,
      onTap: _onTap(context),
      child: Container(
        width: 28.0,
        height: 28.0,
        decoration: ShapeDecoration(color: color, shape: shape),
      ),
    );
  }

  VoidCallback? _onTap(BuildContext context) {
    if (onTap == null) return null;
    return () {
      Feedback.forTap(context);
      onTap!(color);
    };
  }
}
