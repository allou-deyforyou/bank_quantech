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
      label: "Send",
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    final ref = ProviderScope.containerOf(context);
    return () {
      final selectedCard = ref.read(homeSelectedCardProvider).value;
      OperationSendPageRoute({
        OperationSendPageRoute.cardKey: selectedCard,
      }).push(context);
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
    final ref = ProviderScope.containerOf(context);
    return () {
      final selectedCard = ref.read(homeSelectedCardProvider).value;
      OperationReceivePageRoute({
        OperationReceivePageRoute.cardKey: selectedCard,
      }).push(context);
    };
  }
}

class HomeTopupActionButton extends StatelessWidget {
  const HomeTopupActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeActionButton(
      banner: "Soon",
      onPressed: _onPressed(context),
      icon: const Icon(CupertinoIcons.cloud_upload),
      label: "Topup",
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return null;
  }
}

class HomePaymentActionButton extends StatelessWidget {
  const HomePaymentActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeActionButton(
      banner: "Soon",
      iconColor: CupertinoColors.label.resolveFrom(context),
      onPressed: _onPressed(context),
      icon: const Icon(CupertinoIcons.qrcode_viewfinder),
      label: "Payment",
    );
  }

  VoidCallback? _onPressed(BuildContext context) {
    return null;
  }
}

class HomeActionButton extends StatelessWidget {
  const HomeActionButton({
    super.key,
    this.banner,
    this.iconColor,
    this.onPressed,
    required this.icon,
    required this.label,
  });

  final VoidCallback? onPressed;
  final Color? iconColor;
  final String? banner;
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    final iconWidget = Container(
      width: kMinInteractiveDimension,
      height: kMinInteractiveDimension,
      decoration: ShapeDecoration(
        color: onPressed != null
            ? theme.colorScheme.surfaceContainer
            : theme.colorScheme.surface.withValues(alpha: 0.2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      child: IconTheme(
        data: IconThemeData(color: iconColor, size: 22.0),
        child: icon,
      ),
    );
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
            if (banner != null)
              Stack(
                children: [
                  iconWidget,
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: CornerBanner(
                      bannerColor: Colors.red,
                      bannerPosition: CornerBannerPosition.topRight,
                      child: Text(banner!, style: TextStyle(fontSize: 10.0)),
                    ),
                  ),
                ],
              )
            else
              iconWidget,
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
