part of 'home_widget.dart';

class HomeActionButtons extends StatelessWidget {
  const HomeActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      bottom: false,
      minimum: EdgeInsets.all(16.0),
      child: Row(
        spacing: 8.0,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeSentActionButton(),
          HomeReceiveActionButton(),
          HomeTopupActionButton(),
          HomePaymentActionButton(),
        ],
      ),
    );
  }
}

class HomeSentActionButton extends StatelessWidget {
  const HomeSentActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeActionButton(
      iconColor: CupertinoColors.systemRed.resolveFrom(context),
      onPressed: _onPressed(context),
      icon: const Icon(CupertinoIcons.arrow_up),
      label: "Sent",
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return () {
      // Navigator.of(context).pop();
    };
  }
}

class HomeReceiveActionButton extends StatelessWidget {
  const HomeReceiveActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeActionButton(
      iconColor: CupertinoColors.activeGreen.resolveFrom(context),
      onPressed: _onPressed(context),
      icon: const Icon(CupertinoIcons.arrow_down),
      label: "Receive",
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return () {
      // Navigator.of(context).pop();
    };
  }
}

class HomeTopupActionButton extends StatelessWidget {
  const HomeTopupActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeActionButton(
      iconColor: CupertinoColors.label.resolveFrom(context),
      onPressed: _onPressed(context),
      icon: const Icon(CupertinoIcons.cloud_upload),
      label: "Topup",
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return () {
      // Navigator.of(context).pop();
    };
  }
}

class HomePaymentActionButton extends StatelessWidget {
  const HomePaymentActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeActionButton(
      iconColor: CupertinoColors.label.resolveFrom(context),
      onPressed: _onPressed(context),
      icon: const Icon(CupertinoIcons.qrcode_viewfinder),
      label: "Payment",
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return () {
      // Navigator.of(context).pop();
    };
  }
}

class HomeActionButton extends StatelessWidget {
  const HomeActionButton({
    super.key,
    this.onPressed,
    this.iconColor,
    required this.icon,
    required this.label,
  });

  final VoidCallback? onPressed;
  final Color? iconColor;
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: kMaterialListPadding,
        foregroundColor: theme.colorScheme.onSurface.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: SizedBox(
        width: 65.0,
        child: Column(
          spacing: 8.0,
          children: [
            Container(
              width: kMinInteractiveDimension,
              height: kMinInteractiveDimension,
              decoration: ShapeDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: IconTheme(
                data: IconThemeData(color: iconColor, size: 22.0),
                child: icon,
              ),
            ),
            DefaultTextStyle.merge(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                letterSpacing: 0.0,
                fontSize: 14.0,
              ),
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}
