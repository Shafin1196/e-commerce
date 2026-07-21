import 'package:e_commerce/app/app_theme.dart';
import 'package:e_commerce/app/providers/locale_provider.dart';
import 'package:e_commerce/app/providers/theme_mode_provider.dart';
import 'package:e_commerce/app/routes.dart';
import 'package:e_commerce/features/auth/presentation/screens/splash_screen.dart';
import 'package:e_commerce/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class CraftyBarApp extends StatefulWidget {
  const CraftyBarApp({super.key});

  @override
  State<CraftyBarApp> createState() => _CraftyBarAppState();
}

class _CraftyBarAppState extends State<CraftyBarApp> {
  final ThemeModeProvider _themeModeProvider = ThemeModeProvider();
  final LocaleProvider _localeProvider = LocaleProvider();
  @override
  void initState() {
    super.initState();
    _themeModeProvider.setDefaultThemeMode();
    _localeProvider.setDefaultThemeMode();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: _themeModeProvider),
      ChangeNotifierProvider.value(value: _localeProvider)
      ],
      child: Consumer<LocaleProvider>(
        builder: (context,localeProvider,_) {
          return Consumer<ThemeModeProvider>(
            builder: (context, themeModeProvider, _) {
              return MaterialApp(
                title: 'Crafty Bar',
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeMode: themeModeProvider.themeMode,
                localizationsDelegates: [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                initialRoute: SplashScreen.routeName,
                onGenerateRoute: AppRoutes.onGenerateRoute,
                debugShowCheckedModeBanner: false,
                supportedLocales: localeProvider.supportedlocales,
                locale: localeProvider.currentLocale,
          
              );
            },
          );
        }
      ),
    );
  }
}
