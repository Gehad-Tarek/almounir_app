import 'package:almounir_app/models/login_text_field_model.dart';
import 'package:almounir_app/screens/account/change_langugae_screen.dart';
import 'package:almounir_app/screens/account/change_password_screen.dart';
import 'package:almounir_app/screens/account/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../providers/language_setttings_provider.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: width,
            height: height,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.04),
                    Image.asset(
                      "assets/images/mounir.png",
                      width: width * 0.6,
                      height: height * 0.3,
                    ),
                    LoginTextFieldModel(
                      textFieldHint: AppLocalizations.of(context)!.enter_email,
                      fieldLabel: AppLocalizations.of(context)!.email,
                      // textFieldHint: "Enter an Email",
                      // fieldLabel: "Email",
                    ),
                    SizedBox(
                      height: languageProvider.currentLocale == "en"
                          ? height * 0.02
                          : height * 0.015,
                    ),
                    LoginTextFieldModel(
                      textFieldHint: AppLocalizations.of(context)!.enter_pass,
                      fieldLabel: AppLocalizations.of(context)!.password,
                    ),
                    SizedBox(
                      height: height * 0.009,
                    ),
                    Container(
                      width: width,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, ChangePsswordScreen.routeName);
                        },
                        child: Text(
                          AppLocalizations.of(context)!.forget_pass,
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Color(0xff0ca684)
                              // color: Colors.pinkAccent,
                              ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: languageProvider.currentLocale == "en"
                          ? height * 0.02
                          : height * 0.015,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          AppLocalizations.of(context)!.login,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: languageProvider.currentLocale == "en"
                                  ? 18
                                  : 16,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: const Color(0xff0ca684),
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.11,
                              vertical: height * 0.012),
                        )),
                    SizedBox(
                      height: languageProvider.currentLocale == "en"? height * 0.01 : height * 0.006,
                    ),
                    Container(
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(AppLocalizations.of(context)!
                                .do_not_have_an_account),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RegisterScreen.routeName);
                              },
                              child: Text(
                                AppLocalizations.of(context)!.register,
                                style: TextStyle(color: Color(0xff0ca684)),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: languageProvider.currentLocale == "en"? height * 0.01 : height * 0.006,
                    ),
                    Container(
                      width: width,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ChangeLanguageScreen.routeName);
                          },
                          child: Text(
                            AppLocalizations.of(context)!.change_lang,
                            style: TextStyle(
                                color: Color(0xff0ca684),
                                fontSize: languageProvider.currentLocale == "en"
                                    ? 16
                                    : 14),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: languageProvider.currentLocale == "en"
                          ? height * 0.02
                          : height * 0.012,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Divider(
                              color: Color(0xff0ca684),
                              height: 1.5,
                              thickness: 1.5,
                            )),
                        Expanded(
                          flex: 1,
                          child: Center(
                              child: Text(
                            AppLocalizations.of(context)!.or,
                            style: TextStyle(
                                fontSize: languageProvider.currentLocale == "en"
                                    ? 16
                                    : 14,
                                // color: Color(0xff0ca684),
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Expanded(
                            flex: 3,
                            child: Divider(
                              color: Color(0xff0ca684),
                              height: 1.5,
                              thickness: 1.5,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: languageProvider.currentLocale == "en"
                          ? height * 0.02
                          : height * 0.015,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.login_with_google,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: languageProvider.currentLocale == "en"
                                ? 16
                                : 14),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0ca684),
                        fixedSize: languageProvider.currentLocale == "en"
                            ? Size(width * 0.65, height * 0.06)
                            : Size(width * 0.65, height * 0.05),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                    SizedBox(
                      height: languageProvider.currentLocale == "en"
                          ? height * 0.02
                          : height * 0.015,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.login_with_apple,
                        style: TextStyle(
                            color: Color(0xff0ca864),
                            // color: Colors.white,
                            fontSize: languageProvider.currentLocale == "en"
                                ? 16
                                : 14),
                      ),
                      style: ElevatedButton.styleFrom(
                        // backgroundColor: Color(0xff0ca684),
                        backgroundColor: Colors.white,
                        fixedSize: languageProvider.currentLocale == "en"
                            ? Size(width * 0.65, height * 0.06)
                            : Size(width * 0.65, height * 0.05),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side:
                                BorderSide(color: Color(0xff0ca684), width: 3)),
                      ),
                    ),
                  ],
                ))));
  }
}
