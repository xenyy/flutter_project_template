import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_project_template/routing/app_router.dart';
import 'package:flutter_project_template/state/app_state.dart';
import 'package:flutter_project_template/utils/locale/app_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_config/constants.dart';
import 'app_config/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(ProviderScope(
      child: MyApp(),
    ));
  });
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final theme = watch(themeNotifier.state);
    final language = watch(langNotifier.state);
    final localizations = watch(langNotifier);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConfigs.appName,
      theme: theme ? AppTheme.darkTheme : AppTheme.lightTheme,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRoutes.src,
      locale: Locale(language),
      supportedLocales: localizations.supportedLanguages
          .map((language) => Locale(language.locale, language.code))
          .toList(),
      localizationsDelegates: [
        // A class which loads the translations from JSON files
        AppLocalizations.delegate,
        // Built-in localization of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built-in localization for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
        // Built-in localization of basic text for Cupertino widgets
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
