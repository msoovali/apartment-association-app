import 'dart:convert';
import 'dart:developer';

import 'package:apartment/translation/translation.dart';
import 'package:apartment/views/constants/language.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AppLocalizations {
  static final AppLocalizations _instance = AppLocalizations._internal();

  factory AppLocalizations() => _instance;

  AppLocalizations._internal();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  Locale _locale = Language.english.locale;

  Map<String, Map<String, String>> _translations = {};

  void setLocale(Locale locale) {
    _locale = locale;
  }

  Future<void> initialize() async {
    log("Loading translations");
    final response = await http.get(Uri.parse(Settings.translationsUrl));

    if (response.statusCode != 200) {
      log("Failed to load translations: ${response.statusCode} - ${response.body}");
      return;
    }
    List<Translation> result = json
        .decode(utf8.decode(response.bodyBytes))
        .map<Translation>((dynamic item) => Translation.fromJson(item))
        .toList();

    _translations = <String, Map<String, String>>{};
    for (var translation in result) {
      _translations[translation.key] = {
        'en': translation.en,
        'et': translation.et,
      };
    }

    log("Translations loaded");
  }

  String translate(String key) {
    return _translations[key]?[_locale.languageCode] ?? key;
  }
}
