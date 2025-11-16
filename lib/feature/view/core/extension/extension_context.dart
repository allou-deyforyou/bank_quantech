part of 'extension.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get mediaQuery {
    return MediaQuery.of(this);
  }

  ThemeData get theme {
    return Theme.of(this);
  }

  CupertinoThemeData get cupertinoTheme {
    return CupertinoTheme.of(this);
  }

  AppLocalizations get i18n {
    return AppLocalizations.of(this)!;
  }
}
