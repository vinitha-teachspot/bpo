// ignore_for_file: constant_identifier_names, no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import '../main.dart';


class ThemePreferences {
  static const PREF_KEY = 'pref_key';

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(PREF_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(PREF_KEY) ?? false;
  }


  String prefSelectedLanguageCode = "SelectedLanguageCode";

  var locale = const Locale('ru', 'RU');


  Future<Locale> setLocale(String languageCode) async {
    Get.updateLocale(Locale(languageCode));
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString(prefSelectedLanguageCode, languageCode);


    return _locale(languageCode);
  }

  Future<Locale> getLocale(languagecode) async {
    Get.updateLocale(Locale(languagecode));
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String languageCode = _prefs.getString(prefSelectedLanguageCode) ?? "en";
    return _locale(languageCode);
  }

  Locale _locale(String languageCode) {
    return languageCode.isNotEmpty
        ? Locale(languageCode, '')
        : const Locale('en', '');
  }

  void changeLanguage(BuildContext context, String selectedLanguageCode) async {
    var _locale = await setLocale(selectedLanguageCode);
    MyApp.setLocale(context, _locale);
  }




}


class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  ThemePreferences _preferences = ThemePreferences();

  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    _preferences = ThemePreferences();
    getPreferences();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }

  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }
}

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: const Color(0xff000000),
    scaffoldBackgroundColor: const Color(0xffffffff),
    appBarTheme: const AppBarTheme(
      color: Color(0xffffffff),
      iconTheme: IconThemeData(color: Color(0xff232323)),
    ),
    cardTheme: const CardTheme(
      color: Color(0xffffffff),
    ),
    // textTheme: GoogleFonts.nunitoSansTextTheme(),
    // textTheme:  TextTheme(
    //   headline5:  GoogleFonts.inter(fontSize: 18.0),
    //   headline6:  GoogleFonts.inter(fontSize: 16.0,) ,
    //   bodyText1:  GoogleFonts.inter(fontSize: 14.0,),
    //   bodyText2:  GoogleFonts.inter(fontSize: 12.0,),
    // ),
    shadowColor: const Color(0xff000000).withOpacity(0.3),
    colorScheme: const ColorScheme.light().copyWith(
      background: const Color(0xffFF4C3B),
    ),
  );

  static ThemeData darkTheme = ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      primaryColor: const Color(0xffffffff),
      scaffoldBackgroundColor: const Color(0xff232323),
      appBarTheme: const AppBarTheme(
        color: Color(0xff232323),
        iconTheme: IconThemeData(color: Color(0xffffffff)),
      ),
      cardTheme: const CardTheme(
        color: Color(0xff565656),
      ),
      shadowColor: const Color(0xff000000).withOpacity(0.5),
      colorScheme: const ColorScheme.dark()
          .copyWith(background: const Color(0xffFF4C3B)));
}