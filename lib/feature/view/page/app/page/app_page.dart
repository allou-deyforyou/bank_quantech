import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GoRouterInitialization(
      child: Consumer(
        builder: (context, ref, child) {
          return MaterialApp.router(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            routerConfig: ref.watch(appRouterProvider).requireValue,
            supportedLocales: AppLocalizations.supportedLocales,
            themeAnimationStyle: AppThemes.themeAnimationStyle,
            debugShowCheckedModeBanner: false,
            color: AppThemes.primaryColor,
            darkTheme: AppThemes.darkTheme,
            themeMode: ThemeMode.dark,
            theme: AppThemes.theme,
            builder: _builder,
          );
        },
      ),
    );
  }

  static Widget _builder(BuildContext context, Widget? child) {
    return AppTheme(
      child: AppModeBanner(child: AppThemes.buildTextScaler(context, child)),
    );
  }
}
