part of 'app_widget.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final textTheme = theme.textTheme;
    final cupertinoTheme = context.cupertinoTheme.copyWith(
      textTheme: CupertinoTextThemeData(
        primaryColor: theme.colorScheme.primary,
        navLargeTitleTextStyle: textTheme.displaySmall,
        dateTimePickerTextStyle: textTheme.labelLarge!.copyWith(
          letterSpacing: -0.2,
          fontSize: 15.0,
        ),
        navTitleTextStyle: textTheme.headlineMedium,
        actionSmallTextStyle: textTheme.labelSmall,
        navActionTextStyle: textTheme.labelMedium,
        tabLabelTextStyle: textTheme.labelMedium!.copyWith(
          fontWeight: FontWeight.w500,
          letterSpacing: 0.0,
          fontSize: 14.0,
          height: 1.0,
        ),
        actionTextStyle: textTheme.labelMedium,
        pickerTextStyle: textTheme.labelLarge,
        textStyle: textTheme.titleSmall,
      ),
    );
    return CupertinoTheme(data: cupertinoTheme, child: child);
  }
}
