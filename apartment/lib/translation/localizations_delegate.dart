import 'dart:async';

import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/language.dart';
import 'package:flutter/material.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => Language.supportedLocales.contains(locale);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations();
    localizations.setLocale(locale);

    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
