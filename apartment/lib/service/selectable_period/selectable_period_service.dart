import 'package:apartment/state/period/backend/load_period.dart';
import 'package:apartment/state/period/backend/load_selectable_periods.dart';
import 'package:apartment/state/period/models/period_model.dart';

class SelectablePeriodsService {
  static final SelectablePeriodsService _instance =
      SelectablePeriodsService._internal();

  factory SelectablePeriodsService() => _instance;

  SelectablePeriodsService._internal();

  List<String> selectablePeriods = [];

  PeriodModel? lastPeriod;

  Future<void> initialize() async {
    selectablePeriods = await const LoadSelectablePeriods().call();
    if (selectablePeriods.isEmpty) {
      throw Exception("No periods to select");
    }
    lastPeriod = await const LoadPeriod().call(selectablePeriods.first);
  }
}
