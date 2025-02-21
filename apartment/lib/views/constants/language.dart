import 'dart:ui';

enum Language {
  english(flag: '🇬🇧', name: 'English', locale: Locale('en', 'US')),
  estonian(flag: '🇪🇪', name: 'Eesti', locale: Locale('et', 'EE'));

  const Language(
      {required this.flag, required this.name, required this.locale});

  final String flag;
  final String name;
  final Locale locale;

  static List<Locale> supportedLocales =
      Language.values.map((language) => language.locale).toList();

  static Language fromName(String? value) {
    return Language.values.firstWhere(
      (language) => language.name == value,
      orElse: () => Language.english,
    );
  }
}
