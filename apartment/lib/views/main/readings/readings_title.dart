import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:flutter/material.dart';

class ReadingsTitle extends StatelessWidget {
  const ReadingsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int periodMonth = now.month == 1 ? 12 : now.month - 1;
    int periodYear = now.month == 1 ? now.year - 1 : now.year;
    return Text(
        '${AppLocalizations.of(context).translate(TranslatableStrings.period)} $periodMonth.$periodYear',
        style: Theme.of(context).textTheme.bodyMedium);
  }
}
