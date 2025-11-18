part of 'home_widget.dart';

class HomeSliverAppbar extends StatelessWidget {
  const HomeSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SliverAppBar(
      elevation: 0.0,
      centerTitle: false,
      toolbarHeight: 65.0,
      titleTextStyle: theme.textTheme.headlineMedium!.copyWith(
        color: CupertinoColors.label.resolveFrom(context),
        fontWeight: FontWeight.w500,
        letterSpacing: 0.0,
      ),
      title: Text("Bank Quantech"),
      actions: [
        const HomeAppBarNotifButton(),
        Padding(padding: kTabLabelPadding / 8),
      ],
    );
  }
}

class HomeAppBarNotifButton extends StatelessWidget {
  const HomeAppBarNotifButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: "Notifications",
      onPressed: _onPressed(context),
      icon: Icon(Icons.notifications_rounded),
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return null;
    // return () {
    //   // Navigator.of(context).pop();
    // };
  }
}
