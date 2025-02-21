import 'dart:developer';

import 'package:apartment/service/local_storage/local_storage_service.dart';
import 'package:apartment/state/apartment/models/apartment.dart';
import 'package:apartment/state/readings/backend/reading_submitter.dart';
import 'package:apartment/state/readings/model/reading_state.dart';
import 'package:apartment/views/constants/localstorage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'submit_readings_provider.g.dart';

@riverpod
class SubmitReadings extends _$SubmitReadings {
  final _readingSubmitter = const ReadingSubmitter();

  @override
  ReadingState build() {
    var itemInLocalStorage =
        LocalStorageService().getString(LocalStorageKeys.submittedPeriod);
    if (itemInLocalStorage == null) {
      return ReadingState.unknown();
    }
    return ReadingState(submittedPeriod: itemInLocalStorage, isLoading: false);
  }

  Future<void> submitReading(String coldWater, String hotWater,
      Apartment apartment, String spreadSheetName) async {
    state = state.copyWith(isLoading: true);

    try {
      await _readingSubmitter.call(
          coldWater, hotWater, apartment, spreadSheetName);
    } catch (e) {
      log(e.toString());
      state = state.copyWith(isLoading: false);
      rethrow;
    }

    await LocalStorageService()
        .setString(LocalStorageKeys.submittedPeriod, spreadSheetName);
    state = ReadingState(submittedPeriod: spreadSheetName, isLoading: false);
  }
}
