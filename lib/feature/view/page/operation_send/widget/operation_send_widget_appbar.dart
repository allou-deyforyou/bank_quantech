part of 'operation_send_widget.dart';

class OperationSendSliverAppbar extends StatelessWidget {
  const OperationSendSliverAppbar({super.key});

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
      leading: const Center(child: OperationSendAppBarBackButton()),
      title: Text("Send"),
    );
  }
}

class OperationSendAppBarBackButton extends StatelessWidget {
  const OperationSendAppBarBackButton({super.key});

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
