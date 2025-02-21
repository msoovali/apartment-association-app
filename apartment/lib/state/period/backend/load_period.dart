import 'dart:convert';
import 'dart:developer';

import 'package:apartment/state/period/models/period_model.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:http/http.dart' as http;

class LoadPeriod {
  const LoadPeriod();

  Future<PeriodModel?> call(String period) async {
    log("Loading period: $period");
    final response =
        await http.get(Uri.parse("${Settings.apiBaseUrl}/$period.json"));
    if (response.statusCode != 200) {
      log("Failed to load period: ${response.statusCode} - ${response.body}");
      return null;
    }
    final Map<String, dynamic> jsonData =
        json.decode(utf8.decode(response.bodyBytes));
    log('Period $period loaded');
    return PeriodModel.fromJson(jsonData);
  }
}
