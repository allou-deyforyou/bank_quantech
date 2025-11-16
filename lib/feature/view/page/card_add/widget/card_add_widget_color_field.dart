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
          child: Row(
            spacing: 12.0,
            children: [
              CardAddColor(color: Colors.blue),
              CardAddColor(color: Colors.purple, isSelected: true),
              CardAddColor(color: Colors.yellow),
            ],
          ),
        ),
        SizedBox(height: 6.0),
      ],
    );
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
    return Container(
      width: 28.0,
      height: 28.0,
      decoration: ShapeDecoration(
        color: color,
        shape: CircleBorder(
          side: isSelected
              ? BorderSide(color: theme.colorScheme.onSurface, width: 3.0)
              : BorderSide(color: Colors.transparent, width: 3.0),
        ),
      ),
    );
  }
}
