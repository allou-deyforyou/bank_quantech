import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:bank_quantech/core/core.dart';

class AppThemes {
  const AppThemes._();

  static const tertialColor = Color(0xFFFF3B30); // red
  // static const tertialColor = Color(0xFFFFCC00); // yellow
  // static const tertialColor = Color(0xFFFF9500); // orange
  static const primaryColor = Color(0xFF176BEF); // blue

  static const _appBarTheme = AppBarTheme(centerTitle: false);
  static const _floatingActionButtonTheme = FloatingActionButtonThemeData(
    shape: StadiumBorder(),
    elevation: 0.0,
  );
  static const _bottomSheetTheme = BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
    ),
    clipBehavior: Clip.antiAlias,
    elevation: 2.0,
  );
  static const _dividerTheme = DividerThemeData(thickness: 0.8, space: 0.8);
  static final _filledButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
    ),
  );
  static final _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
    ),
  );
  static final _outlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
    ),
  );
  static const _inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
      // borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
      borderSide: BorderSide(color: CupertinoColors.systemFill, width: 0.8),
      // borderSide: BorderSide.none,
    ),
    // fillColor: CupertinoColors.tertiarySystemFill,
    labelStyle: TextStyle(fontSize: 18.0),
    errorStyle: TextStyle(height: 1.0),
    isDense: true,
    filled: true,
  );
  static const _listTileTheme = ListTileThemeData(
    visualDensity: VisualDensity(
      horizontal: VisualDensity.minimumDensity,
      vertical: VisualDensity.minimumDensity,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    horizontalTitleGap: 24.0,
  );
  static const _dialogTheme = DialogThemeData(
    clipBehavior: Clip.antiAlias,
    shape: RoundedSuperellipseBorder(
      borderRadius: BorderRadius.all(Radius.circular(24.0)),
    ),
    elevation: 0.0,
  );

  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    fontFamily: FontFamily.montserrat,
    dialogTheme: _dialogTheme,
    dividerTheme: _dividerTheme,
    listTileTheme: _listTileTheme,
    textButtonTheme: _textButtonTheme,
    bottomSheetTheme: _bottomSheetTheme,
    filledButtonTheme: _filledButtonTheme,
    outlinedButtonTheme: _outlineButtonTheme,
    inputDecorationTheme: _inputDecorationTheme,
    scaffoldBackgroundColor: CupertinoColors.white,
    floatingActionButtonTheme: _floatingActionButtonTheme,
    appBarTheme: _appBarTheme.copyWith(
      backgroundColor: CupertinoColors.white,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: CupertinoColors.white,
        statusBarColor: Colors.transparent,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      secondaryContainer: const Color(0xFF8CC6F0),
      tertiaryContainer: const Color(0xFFF1E4E4),
      brightness: Brightness.light,
      onTertiary: Colors.white,
      seedColor: primaryColor,
      tertiary: tertialColor,
      primary: primaryColor,
    ),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(applyThemeToAll: true),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: FontFamily.montserrat,
    dialogTheme: _dialogTheme,
    dividerTheme: _dividerTheme,
    listTileTheme: _listTileTheme,
    textButtonTheme: _textButtonTheme,
    bottomSheetTheme: _bottomSheetTheme,
    filledButtonTheme: _filledButtonTheme,
    outlinedButtonTheme: _outlineButtonTheme,
    inputDecorationTheme: _inputDecorationTheme,
    floatingActionButtonTheme: _floatingActionButtonTheme,
    scaffoldBackgroundColor: const Color(0xFF121433),
    appBarTheme: _appBarTheme.copyWith(
      backgroundColor: const Color(0xFF121433),
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: const Color(0xFF121433),
        statusBarColor: Colors.transparent,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      tertiaryContainer: const Color(0xFF593F3F),
      surface: const Color(0xFF23265A),
      brightness: Brightness.dark,
      onTertiary: Colors.white,
      onPrimary: Colors.white,
      seedColor: primaryColor,
      tertiary: tertialColor,
      primary: primaryColor,
    ),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(applyThemeToAll: true),
  );

  static Widget buildTextScaler(BuildContext context, Widget? child) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(0.9)),
      child: child!,
    );
  }

  static AnimationStyle get themeAnimationStyle => AnimationStyle(
    duration: const Duration(milliseconds: 600),
    curve: Curves.fastOutSlowIn,
  );
}
