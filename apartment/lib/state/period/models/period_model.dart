import 'package:freezed_annotation/freezed_annotation.dart';

part 'period_model.freezed.dart';
part 'period_model.g.dart';

@freezed
class SelectedPeriodState with _$SelectedPeriodState {
  const factory SelectedPeriodState({
    required PeriodModel? period,
    required bool isLoading,
  }) = _SelectedPeriodState;

  factory SelectedPeriodState.unknown() => const SelectedPeriodState(
    period: null,
    isLoading: false,
  );
}

@freezed
class PeriodModel with _$PeriodModel {
  const factory PeriodModel({
    required Period period,
    required List<Apartment> apartments,
  }) = _PeriodModel;

  factory PeriodModel.fromJson(Map<String, dynamic> json) =>
      _$PeriodModelFromJson(json);
}

@freezed
class Period with _$Period {
  const factory Period({
    required String start,
    required String end,
  }) = _Period;

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);
}

@freezed
class Apartment with _$Apartment {
  const factory Apartment({
    required String number,
    required List<Consumable> consumables,
  }) = _Apartment;

  factory Apartment.fromJson(Map<String, dynamic> json) =>
      _$ApartmentFromJson(json);
}

@freezed
class Consumable with _$Consumable {
  const factory Consumable({
    required String label,
    required String dueDate,
    required Total total,
    required List<LabelValueUnit> consumptions,
    required List<LabelValueUnit> prices,
    required List<LabelValue> paymentRequisites,
  }) = _Consumable;

  factory Consumable.fromJson(Map<String, dynamic> json) =>
      _$ConsumableFromJson(json);
}

@freezed
class Total with _$Total {
  const factory Total({
    required ValueUnit consumed,
    required ValueUnit payable,
  }) = _Total;

  factory Total.fromJson(Map<String, dynamic> json) => _$TotalFromJson(json);
}

@freezed
class ValueUnit with _$ValueUnit {
  const factory ValueUnit({
    required double value,
    required String unit,
  }) = _ValueUnit;

  factory ValueUnit.fromJson(Map<String, dynamic> json) =>
      _$ValueUnitFromJson(json);
}

@freezed
class LabelValueUnit with _$LabelValueUnit {
  const factory LabelValueUnit({
    required String label,
    required double value,
    required String unit,
  }) = _LabelValueUnit;

  factory LabelValueUnit.fromJson(Map<String, dynamic> json) =>
      _$LabelValueUnitFromJson(json);
}

@freezed
class LabelValue with _$LabelValue {
  const factory LabelValue({
    required String label,
    required String value,
  }) = _LabelValue;

  factory LabelValue.fromJson(Map<String, dynamic> json) =>
      _$LabelValueFromJson(json);
}
