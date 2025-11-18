import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoaderScope extends StatefulWidget {
  const LoaderScope({super.key, this.loading = false, required this.child});

  final bool loading;
  final Widget child;

  static LoaderController? maybeOf(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<LoaderController>();
    return result;
  }

  static LoaderController of(BuildContext context) {
    final controller = maybeOf(context);
    assert(() {
      if (controller == null) {
        throw FlutterError(
          'LoaderController.of() was called with a context that does not contain a '
          'LoaderController widget.\n'
          'No LoaderController widget ancestor could be found starting from the '
          'context that was passed to LoaderController.of(). This can happen '
          'because you are using a widget that looks for a LoaderController '
          'ancestor, but no such ancestor exists.\n'
          'The context used was:\n'
          '  $context',
        );
      }
      return true;
    }());
    return controller!;
  }

  @override
  State<LoaderScope> createState() => _LoaderScopeState();
}

class _LoaderScopeState extends State<LoaderScope> {
  late final ValueNotifier<bool> _controller;

  void _onChanged() {
    if (_controller.value) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = ValueNotifier<bool>(widget.loading);
    _controller.addListener(_onChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onChanged);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoaderController(
      controller: _controller,
      child: ValueListenableBuilder<bool>(
        valueListenable: _controller,
        builder: (context, isLoading, child) {
          return Stack(
            children: [
              Positioned.fill(
                child: PopScope<void>(
                  canPop: !isLoading,
                  child: IgnorePointer(
                    ignoring: isLoading,
                    child: widget.child,
                  ),
                ),
              ),
              if (isLoading)
                const Positioned.fill(child: _LoaderScopeWrapper()),
            ],
          );
        },
      ),
    );
  }
}

class _LoaderScopeWrapper extends StatelessWidget {
  const _LoaderScopeWrapper();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor.withValues(alpha: 0.4),
      ),
      child: SafeArea(child: Loader()),
    );
  }
}

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 60.0,
      child: RepaintBoundary(
        child: CircularProgressIndicator(
          color: CupertinoColors.label.resolveFrom(context),
          strokeCap: StrokeCap.round,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}

class LoaderController extends InheritedWidget {
  const LoaderController({
    super.key,
    required ValueNotifier<bool> controller,
    required super.child,
  }) : _controller = controller;

  final ValueNotifier<bool> _controller;

  void start() => _controller.value = true;

  void stop() => _controller.value = false;

  bool get isLoading => _controller.value == true;

  @override
  bool updateShouldNotify(covariant LoaderController oldWidget) {
    return oldWidget._controller != _controller;
  }
}

extension LoaderScopeExtension on BuildContext {
  void maybeStartLoader() {
    LoaderScope.maybeOf(this)?.start();
  }

  void maybeStopLoader() {
    LoaderScope.maybeOf(this)?.start();
  }

  void startLoading() {
    LoaderScope.of(this).start();
  }

  void stopLoading() {
    LoaderScope.of(this).stop();
  }
}
