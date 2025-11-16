part of 'app_widget.dart';

class AppModeBanner extends StatelessWidget {
  /// Creates a const debug mode banner.
  const AppModeBanner({super.key, required this.child});

  /// The widget to show behind the banner.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Widget result = child;
    // if (Env.appBanner.isNotEmpty) {
    //   result = Banner(
    //     textDirection: TextDirection.ltr,
    //     location: BannerLocation.topStart,
    //     message: Env.appBanner.toUpperCase(),
    //     child: result,
    //   );
    // }
    return result;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    String message = 'disabled';
    assert(() {
      // message = '"${Env.appBanner.toUpperCase()}"';
      return true;
    }());
    properties.add(DiagnosticsNode.message(message));
  }
}
