// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeriodModelImpl _$$PeriodModelImplFromJson(Map<String, dynamic> json) =>
    _$PeriodModelImpl(
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
      apartments: (json['apartments'] as List<dynamic>)
          .map((e) => Apartment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PeriodModelImplToJson(_$PeriodModelImpl instance) =>
    <String, dynamic>{
      'period': instance.period,
      'apartments': instance.apartments,
    };

_$PeriodImpl _$$PeriodImplFromJson(Map<String, dynamic> json) => _$PeriodImpl(
      start: json['start'] as String,
      end: json['end'] as String,
    );

Map<String, dynamic> _$$PeriodImplToJson(_$PeriodImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

_$ApartmentImpl _$$ApartmentImplFromJson(Map<String, dynamic> json) =>
    _$ApartmentImpl(
      number: json['number'] as String,
      consumables: (json['consumables'] as List<dynamic>)
          .map((e) => Consumable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ApartmentImplToJson(_$ApartmentImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'consumables': instance.consumables,
    };

_$ConsumableImpl _$$ConsumableImplFromJson(Map<String, dynamic> json) =>
    _$ConsumableImpl(
      label: json['label'] as String,
      dueDate: json['dueDate'] as String,
      total: Total.fromJson(json['total'] as Map<String, dynamic>),
      consumptions: (json['consumptions'] as List<dynamic>)
          .map((e) => LabelValueUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
      prices: (json['prices'] as List<dynamic>)
          .map((e) => LabelValueUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentRequisites: (json['paymentRequisites'] as List<dynamic>)
          .map((e) => LabelValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConsumableImplToJson(_$ConsumableImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'dueDate': instance.dueDate,
      'total': instance.total,
      'consumptions': instance.consumptions,
      'prices': instance.prices,
      'paymentRequisites': instance.paymentRequisites,
    };

_$TotalImpl _$$TotalImplFromJson(Map<String, dynamic> json) => _$TotalImpl(
      consumed: ValueUnit.fromJson(json['consumed'] as Map<String, dynamic>),
      payable: ValueUnit.fromJson(json['payable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TotalImplToJson(_$TotalImpl instance) =>
    <String, dynamic>{
      'consumed': instance.consumed,
      'payable': instance.payable,
    };

_$ValueUnitImpl _$$ValueUnitImplFromJson(Map<String, dynamic> json) =>
    _$ValueUnitImpl(
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$ValueUnitImplToJson(_$ValueUnitImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

_$LabelValueUnitImpl _$$LabelValueUnitImplFromJson(Map<String, dynamic> json) =>
    _$LabelValueUnitImpl(
      label: json['label'] as String,
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$LabelValueUnitImplToJson(
        _$LabelValueUnitImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
      'unit': instance.unit,
    };

_$LabelValueImpl _$$LabelValueImplFromJson(Map<String, dynamic> json) =>
    _$LabelValueImpl(
      label: json['label'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$LabelValueImplToJson(_$LabelValueImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
    };
