import 'package:apartment/service/selectable_period/selectable_period_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selectable_periods_provider.g.dart';

@riverpod
class SelectablePeriods extends _$SelectablePeriods {
  @override
  List<String> build() => SelectablePeriodsService().selectablePeriods;
}
