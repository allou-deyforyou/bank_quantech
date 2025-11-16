part of 'card_information_widget.dart';

class CardInformationSliverAppbar extends StatelessWidget {
  const CardInformationSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SliverAppBar(
      elevation: 0.0,
      centerTitle: true,
      toolbarHeight: 65.0,
      titleTextStyle: theme.textTheme.headlineMedium!.copyWith(
        color: CupertinoColors.label.resolveFrom(context),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.0,
      ),
      leading: const Center(child: CardInformationAppBarBackButton()),
      title: Text("Card Information"),
    );
  }
}

class CardInformationAppBarBackButton extends StatelessWidget {
  const CardInformationAppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: "Back",
      style: IconButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      onPressed: _onPressed(context),
      icon: Icon(Icons.arrow_back_ios_new_rounded),
    );
  }

  VoidCallback _onPressed(BuildContext context) {
    return () {
      Navigator.of(context).pop();
    };
  }
}
