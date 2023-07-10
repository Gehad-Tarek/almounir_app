import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/language_setttings_provider.dart';

class LoginTextFieldModel extends StatelessWidget {
  // const LoginTextFieldModel({super.key});
  String textFieldHint;
  String fieldLabel;

  LoginTextFieldModel({required this.textFieldHint, required this.fieldLabel});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);

    return TextField(
        decoration: InputDecoration(
      hoverColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(
          vertical: languageProvider.currentLocale == "en"
              ? height * 0.02
              : height * 0.013,
          horizontal: width * 0.03),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color(0xff0ca684), width: 0.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color(0xff0ca684), width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color(0xff0ca684), width: 0.5),
      ),
      labelText: fieldLabel,
      labelStyle: TextStyle(fontSize: languageProvider.currentLocale == "en"? 16: 14, color: Color(0xff0ca684)),
      hintText: textFieldHint,
      hintStyle: TextStyle(fontSize: languageProvider.currentLocale == "en"? 16: 14),
    ));
  }
}
