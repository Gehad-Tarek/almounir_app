import 'package:almounir_app/providers/language_setttings_provider.dart';
import 'package:almounir_app/screens/account/change_langugae_screen.dart';
import 'package:almounir_app/screens/account/change_password_screen.dart';
import 'package:almounir_app/screens/account/register_screen.dart';
import 'package:almounir_app/screens/bottom_navigation_bar_design.dart';
import 'package:almounir_app/screens/splash/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => LanguageSettingsProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  late LanguageSettingsProvider languageProvider;

  @override
  Widget build(BuildContext context) {
    languageProvider = Provider.of(context);
    return DevicePreview(
        enabled: true,
        builder: (BuildContext context) {
          return MaterialApp(
              useInheritedMediaQuery: true,
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              // title: 'Flutter Demo',
              home: MySplashScreen(),

              // BottomNavigationBarDesign(
                // title: "Al-Mounir Center",
              // ),
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                Locale('en'), // English
                Locale('ar'), // Spanish
              ],
              locale: Locale(languageProvider.currentLocale),
              routes: {
                RegisterScreen.routeName: (_) => RegisterScreen(),
                ChangePsswordScreen.routeName: (_) => ChangePsswordScreen(),
                ChangeLanguageScreen.routeName: (_)=> ChangeLanguageScreen()
              }
              // MySplashScreen(),
              );
        });
  }
}
