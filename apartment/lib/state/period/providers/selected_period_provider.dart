import 'dart:convert';

import 'package:apartment/service/local_storage/local_storage_service.dart';
import 'package:apartment/service/selectable_period/selectable_period_service.dart';
import 'package:apartment/state/period/backend/load_period.dart';
import 'package:apartment/state/period/models/period_model.dart';
import 'package:apartment/views/constants/localstorage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_period_provider.g.dart';

@riverpod
class SelectedPeriod extends _$SelectedPeriod {
  final _loadPeriod = const LoadPeriod();

  @override
  SelectedPeriodState build() {
    var itemInLocalStorage =
        LocalStorageService().getString(LocalStorageKeys.selectedPeriod);
    if (itemInLocalStorage == null) {
      return SelectedPeriodState(
          period: SelectablePeriodsService().lastPeriod, isLoading: false);
    }
    return SelectedPeriodState(
        period: PeriodModel.fromJson(jsonDecode(itemInLocalStorage)),
        isLoading: false);
  }

  Future<void> selectPeriod(String period) async {
    state = state.copyWith(isLoading: true);
    final periodModel = await _loadPeriod.call(period);
    await LocalStorageService()
        .setString(LocalStorageKeys.selectedPeriod, jsonEncode(periodModel));
    state = SelectedPeriodState(period: periodModel, isLoading: false);
  }
}
