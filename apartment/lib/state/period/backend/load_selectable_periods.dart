import 'dart:convert';
import 'dart:developer';

import 'package:apartment/views/constants/settings.dart';
import 'package:http/http.dart' as http;

class LoadSelectablePeriods {
  const LoadSelectablePeriods();

  Future<List<String>> call() async {
    log("Loading selectable periods");
    final response = await http.get(Uri.parse(Settings.bucketContentsUrl));

    if (response.statusCode != 200) {
      log("Failed to load selectable periods: ${response.statusCode} - ${response.body}");
      return [];
    }

    final Map<String, dynamic> jsonData =
        json.decode(utf8.decode(response.bodyBytes));
    final List<dynamic> items = jsonData['items'];
    final List<String> bucketContents =
        items.map((item) => item['name'] as String).toList();

    final List<String> selectablePeriods = bucketContents
        .where((element) => RegExp(r"(\d{4}_\d{2}\.json)").hasMatch(element))
        .map((e) => e.replaceAll('.json', ''))
        .toList();

    selectablePeriods.sort((a, b) {
      // Split each string into year and month
      List<String> aParts = a.split('_');
      List<String> bParts = b.split('_');

      int aYear = int.parse(aParts[0]);
      int bYear = int.parse(bParts[0]);

      int aMonth = int.parse(aParts[1]);
      int bMonth = int.parse(bParts[1]);

      // Compare years first, then months
      if (aYear == bYear) {
        return bMonth.compareTo(aMonth);
      } else {
        return bYear.compareTo(aYear);
      }
    });

    log('Selectable periods loaded: $selectablePeriods');

    return selectablePeriods;
  }
}
