part of 'app_widget.dart';

class GoRouterInitialization extends ConsumerWidget {
  const GoRouterInitialization({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(appRouterProvider);
    if (result.isLoading || result.hasError) {
      return const SizedBox.shrink();
    }
    return child;
  }
}
