import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../models/login_text_field_model.dart';
import '../../providers/language_setttings_provider.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static final String routeName = "Register Screen";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    LanguageSettingsProvider languageProvider = Provider.of(context);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff0ca684),
              ),
            )),
        body: Container(
            width: width,
            height: height,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.02),
                    Image.asset(
                      "assets/images/mounir.png",
                      width: width * 0.6,
                      height: height * 0.3,
                    ),
                    LoginTextFieldModel(
                      textFieldHint: AppLocalizations.of(context)!.enter_email,
                      fieldLabel: AppLocalizations.of(context)!.email,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    LoginTextFieldModel(
                      textFieldHint: AppLocalizations.of(context)!.enter_pass,
                      fieldLabel: AppLocalizations.of(context)!.password,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    LoginTextFieldModel(
                      textFieldHint: AppLocalizations.of(context)!.confirm_password,
                      fieldLabel: AppLocalizations.of(context)!.confirm_password,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          AppLocalizations.of(context)!.create_account,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: languageProvider.currentLocale == "en"? 18: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: const Color(0xff0ca684),
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.11,
                              vertical: height * 0.015),
                        )),
                    SizedBox(
                      height: height * 0.01,
                    ),
                  ],
                ))));
  }
}
