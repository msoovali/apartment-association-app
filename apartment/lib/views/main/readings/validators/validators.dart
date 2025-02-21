import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:flutter/cupertino.dart';

String? validateReading(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return AppLocalizations.of(context)
        .translate(TranslatableStrings.readingCannotBeEmpty);
  }
  if (value.contains(',')) {
    return AppLocalizations.of(context)
        .translate(TranslatableStrings.useDotInsteadOfComma);
  }
  final valueRegex = RegExp(r'^\d+\.\d{3}');
  if (!valueRegex.hasMatch(value)) {
    return AppLocalizations.of(context)
        .translate(TranslatableStrings.numberWith3DecimalPlaces);
  }

  return null;
}
