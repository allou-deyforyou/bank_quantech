part of 'app_widget.dart';

class AppRemoveSplash extends StatefulWidget {
  const AppRemoveSplash({super.key, required this.child});

  final Widget child;

  @override
  State<AppRemoveSplash> createState() => _AppRemoveSplashState();
}

class _AppRemoveSplashState extends State<AppRemoveSplash> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    $appRouteObserver.subscribe(this, ModalRoute.of(context)! as PageRoute);
  }

  @override
  void didPush() {
    super.didPush();
    FlutterNativeSplash.remove();
  }

  @override
  void dispose() {
    $appRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
