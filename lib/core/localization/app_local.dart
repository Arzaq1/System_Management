import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocale {
  AppLocale({required this.locale});
  Locale locale;
  Map<String, String>? loadedLocalizedValues;

  String? langFile;
  Map<String, dynamic>? loadedValues;

  static AppLocale of(BuildContext context) {
    return Localizations.of(context, AppLocale);
  }

  Future loadLang() async {
    langFile =
        await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    loadedValues = jsonDecode(langFile!);
    loadedLocalizedValues =
        loadedValues!.map((key, value) => MapEntry(key, value.toString()));
  }

  String getTranslated(String key) {
    return loadedLocalizedValues![key]!;
  }

  static const LocalizationsDelegate<AppLocale> delegate = AppLocalDelegate();
}

class AppLocalDelegate extends LocalizationsDelegate<AppLocale> {
  const AppLocalDelegate();
  @override
  bool isSupported(Locale locale) {
    return ["en", "ar"].contains(locale.languageCode);
  }

  @override
  Future<AppLocale> load(Locale locale) async {
    AppLocale appLocale = AppLocale(locale: locale);
    await appLocale.loadLang();
    return appLocale;
  }

  @override
  bool shouldReload(AppLocalDelegate old) => false;
}

getLang(BuildContext context, String key) {
  return AppLocale.of(context).getTranslated(key);
}
