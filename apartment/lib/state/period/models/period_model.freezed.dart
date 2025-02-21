// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'period_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectedPeriodState {
  PeriodModel? get period => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of SelectedPeriodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedPeriodStateCopyWith<SelectedPeriodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedPeriodStateCopyWith<$Res> {
  factory $SelectedPeriodStateCopyWith(
          SelectedPeriodState value, $Res Function(SelectedPeriodState) then) =
      _$SelectedPeriodStateCopyWithImpl<$Res, SelectedPeriodState>;
  @useResult
  $Res call({PeriodModel? period, bool isLoading});

  $PeriodModelCopyWith<$Res>? get period;
}

/// @nodoc
class _$SelectedPeriodStateCopyWithImpl<$Res, $Val extends SelectedPeriodState>
    implements $SelectedPeriodStateCopyWith<$Res> {
  _$SelectedPeriodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedPeriodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as PeriodModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SelectedPeriodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodModelCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodModelCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectedPeriodStateImplCopyWith<$Res>
    implements $SelectedPeriodStateCopyWith<$Res> {
  factory _$$SelectedPeriodStateImplCopyWith(_$SelectedPeriodStateImpl value,
          $Res Function(_$SelectedPeriodStateImpl) then) =
      __$$SelectedPeriodStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PeriodModel? period, bool isLoading});

  @override
  $PeriodModelCopyWith<$Res>? get period;
}

/// @nodoc
class __$$SelectedPeriodStateImplCopyWithImpl<$Res>
    extends _$SelectedPeriodStateCopyWithImpl<$Res, _$SelectedPeriodStateImpl>
    implements _$$SelectedPeriodStateImplCopyWith<$Res> {
  __$$SelectedPeriodStateImplCopyWithImpl(_$SelectedPeriodStateImpl _value,
      $Res Function(_$SelectedPeriodStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedPeriodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$SelectedPeriodStateImpl(
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as PeriodModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectedPeriodStateImpl implements _SelectedPeriodState {
  const _$SelectedPeriodStateImpl(
      {required this.period, required this.isLoading});

  @override
  final PeriodModel? period;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SelectedPeriodState(period: $period, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPeriodStateImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, period, isLoading);

  /// Create a copy of SelectedPeriodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedPeriodStateImplCopyWith<_$SelectedPeriodStateImpl> get copyWith =>
      __$$SelectedPeriodStateImplCopyWithImpl<_$SelectedPeriodStateImpl>(
          this, _$identity);
}

abstract class _SelectedPeriodState implements SelectedPeriodState {
  const factory _SelectedPeriodState(
      {required final PeriodModel? period,
      required final bool isLoading}) = _$SelectedPeriodStateImpl;

  @override
  PeriodModel? get period;
  @override
  bool get isLoading;

  /// Create a copy of SelectedPeriodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedPeriodStateImplCopyWith<_$SelectedPeriodStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PeriodModel _$PeriodModelFromJson(Map<String, dynamic> json) {
  return _PeriodModel.fromJson(json);
}

/// @nodoc
mixin _$PeriodModel {
  Period get period => throw _privateConstructorUsedError;
  List<Apartment> get apartments => throw _privateConstructorUsedError;

  /// Serializes this PeriodModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodModelCopyWith<PeriodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodModelCopyWith<$Res> {
  factory $PeriodModelCopyWith(
          PeriodModel value, $Res Function(PeriodModel) then) =
      _$PeriodModelCopyWithImpl<$Res, PeriodModel>;
  @useResult
  $Res call({Period period, List<Apartment> apartments});

  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class _$PeriodModelCopyWithImpl<$Res, $Val extends PeriodModel>
    implements $PeriodModelCopyWith<$Res> {
  _$PeriodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? apartments = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      apartments: null == apartments
          ? _value.apartments
          : apartments // ignore: cast_nullable_to_non_nullable
              as List<Apartment>,
    ) as $Val);
  }

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get period {
    return $PeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PeriodModelImplCopyWith<$Res>
    implements $PeriodModelCopyWith<$Res> {
  factory _$$PeriodModelImplCopyWith(
          _$PeriodModelImpl value, $Res Function(_$PeriodModelImpl) then) =
      __$$PeriodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Period period, List<Apartment> apartments});

  @override
  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class __$$PeriodModelImplCopyWithImpl<$Res>
    extends _$PeriodModelCopyWithImpl<$Res, _$PeriodModelImpl>
    implements _$$PeriodModelImplCopyWith<$Res> {
  __$$PeriodModelImplCopyWithImpl(
      _$PeriodModelImpl _value, $Res Function(_$PeriodModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? apartments = null,
  }) {
    return _then(_$PeriodModelImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
      apartments: null == apartments
          ? _value._apartments
          : apartments // ignore: cast_nullable_to_non_nullable
              as List<Apartment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodModelImpl implements _PeriodModel {
  const _$PeriodModelImpl(
      {required this.period, required final List<Apartment> apartments})
      : _apartments = apartments;

  factory _$PeriodModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodModelImplFromJson(json);

  @override
  final Period period;
  final List<Apartment> _apartments;
  @override
  List<Apartment> get apartments {
    if (_apartments is EqualUnmodifiableListView) return _apartments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apartments);
  }

  @override
  String toString() {
    return 'PeriodModel(period: $period, apartments: $apartments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodModelImpl &&
            (identical(other.period, period) || other.period == period) &&
            const DeepCollectionEquality()
                .equals(other._apartments, _apartments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, period, const DeepCollectionEquality().hash(_apartments));

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodModelImplCopyWith<_$PeriodModelImpl> get copyWith =>
      __$$PeriodModelImplCopyWithImpl<_$PeriodModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodModelImplToJson(
      this,
    );
  }
}

abstract class _PeriodModel implements PeriodModel {
  const factory _PeriodModel(
      {required final Period period,
      required final List<Apartment> apartments}) = _$PeriodModelImpl;

  factory _PeriodModel.fromJson(Map<String, dynamic> json) =
      _$PeriodModelImpl.fromJson;

  @override
  Period get period;
  @override
  List<Apartment> get apartments;

  /// Create a copy of PeriodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodModelImplCopyWith<_$PeriodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return _Period.fromJson(json);
}

/// @nodoc
mixin _$Period {
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;

  /// Serializes this Period to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodCopyWith<Period> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodCopyWith<$Res> {
  factory $PeriodCopyWith(Period value, $Res Function(Period) then) =
      _$PeriodCopyWithImpl<$Res, Period>;
  @useResult
  $Res call({String start, String end});
}

/// @nodoc
class _$PeriodCopyWithImpl<$Res, $Val extends Period>
    implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodImplCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$$PeriodImplCopyWith(
          _$PeriodImpl value, $Res Function(_$PeriodImpl) then) =
      __$$PeriodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String start, String end});
}

/// @nodoc
class __$$PeriodImplCopyWithImpl<$Res>
    extends _$PeriodCopyWithImpl<$Res, _$PeriodImpl>
    implements _$$PeriodImplCopyWith<$Res> {
  __$$PeriodImplCopyWithImpl(
      _$PeriodImpl _value, $Res Function(_$PeriodImpl) _then)
      : super(_value, _then);

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$PeriodImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodImpl implements _Period {
  const _$PeriodImpl({required this.start, required this.end});

  factory _$PeriodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodImplFromJson(json);

  @override
  final String start;
  @override
  final String end;

  @override
  String toString() {
    return 'Period(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      __$$PeriodImplCopyWithImpl<_$PeriodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodImplToJson(
      this,
    );
  }
}

abstract class _Period implements Period {
  const factory _Period(
      {required final String start, required final String end}) = _$PeriodImpl;

  factory _Period.fromJson(Map<String, dynamic> json) = _$PeriodImpl.fromJson;

  @override
  String get start;
  @override
  String get end;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Apartment _$ApartmentFromJson(Map<String, dynamic> json) {
  return _Apartment.fromJson(json);
}

/// @nodoc
mixin _$Apartment {
  String get number => throw _privateConstructorUsedError;
  List<Consumable> get consumables => throw _privateConstructorUsedError;

  /// Serializes this Apartment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Apartment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApartmentCopyWith<Apartment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApartmentCopyWith<$Res> {
  factory $ApartmentCopyWith(Apartment value, $Res Function(Apartment) then) =
      _$ApartmentCopyWithImpl<$Res, Apartment>;
  @useResult
  $Res call({String number, List<Consumable> consumables});
}

/// @nodoc
class _$ApartmentCopyWithImpl<$Res, $Val extends Apartment>
    implements $ApartmentCopyWith<$Res> {
  _$ApartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Apartment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? consumables = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      consumables: null == consumables
          ? _value.consumables
          : consumables // ignore: cast_nullable_to_non_nullable
              as List<Consumable>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApartmentImplCopyWith<$Res>
    implements $ApartmentCopyWith<$Res> {
  factory _$$ApartmentImplCopyWith(
          _$ApartmentImpl value, $Res Function(_$ApartmentImpl) then) =
      __$$ApartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String number, List<Consumable> consumables});
}

/// @nodoc
class __$$ApartmentImplCopyWithImpl<$Res>
    extends _$ApartmentCopyWithImpl<$Res, _$ApartmentImpl>
    implements _$$ApartmentImplCopyWith<$Res> {
  __$$ApartmentImplCopyWithImpl(
      _$ApartmentImpl _value, $Res Function(_$ApartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Apartment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? consumables = null,
  }) {
    return _then(_$ApartmentImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      consumables: null == consumables
          ? _value._consumables
          : consumables // ignore: cast_nullable_to_non_nullable
              as List<Consumable>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApartmentImpl implements _Apartment {
  const _$ApartmentImpl(
      {required this.number, required final List<Consumable> consumables})
      : _consumables = consumables;

  factory _$ApartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApartmentImplFromJson(json);

  @override
  final String number;
  final List<Consumable> _consumables;
  @override
  List<Consumable> get consumables {
    if (_consumables is EqualUnmodifiableListView) return _consumables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consumables);
  }

  @override
  String toString() {
    return 'Apartment(number: $number, consumables: $consumables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApartmentImpl &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality()
                .equals(other._consumables, _consumables));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, number, const DeepCollectionEquality().hash(_consumables));

  /// Create a copy of Apartment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApartmentImplCopyWith<_$ApartmentImpl> get copyWith =>
      __$$ApartmentImplCopyWithImpl<_$ApartmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApartmentImplToJson(
      this,
    );
  }
}

abstract class _Apartment implements Apartment {
  const factory _Apartment(
      {required final String number,
      required final List<Consumable> consumables}) = _$ApartmentImpl;

  factory _Apartment.fromJson(Map<String, dynamic> json) =
      _$ApartmentImpl.fromJson;

  @override
  String get number;
  @override
  List<Consumable> get consumables;

  /// Create a copy of Apartment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApartmentImplCopyWith<_$ApartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Consumable _$ConsumableFromJson(Map<String, dynamic> json) {
  return _Consumable.fromJson(json);
}

/// @nodoc
mixin _$Consumable {
  String get label => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  Total get total => throw _privateConstructorUsedError;
  List<LabelValueUnit> get consumptions => throw _privateConstructorUsedError;
  List<LabelValueUnit> get prices => throw _privateConstructorUsedError;
  List<LabelValue> get paymentRequisites => throw _privateConstructorUsedError;

  /// Serializes this Consumable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Consumable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsumableCopyWith<Consumable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsumableCopyWith<$Res> {
  factory $ConsumableCopyWith(
          Consumable value, $Res Function(Consumable) then) =
      _$ConsumableCopyWithImpl<$Res, Consumable>;
  @useResult
  $Res call(
      {String label,
      String dueDate,
      Total total,
      List<LabelValueUnit> consumptions,
      List<LabelValueUnit> prices,
      List<LabelValue> paymentRequisites});

  $TotalCopyWith<$Res> get total;
}

/// @nodoc
class _$ConsumableCopyWithImpl<$Res, $Val extends Consumable>
    implements $ConsumableCopyWith<$Res> {
  _$ConsumableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Consumable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? dueDate = null,
    Object? total = null,
    Object? consumptions = null,
    Object? prices = null,
    Object? paymentRequisites = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Total,
      consumptions: null == consumptions
          ? _value.consumptions
          : consumptions // ignore: cast_nullable_to_non_nullable
              as List<LabelValueUnit>,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<LabelValueUnit>,
      paymentRequisites: null == paymentRequisites
          ? _value.paymentRequisites
          : paymentRequisites // ignore: cast_nullable_to_non_nullable
              as List<LabelValue>,
    ) as $Val);
  }

  /// Create a copy of Consumable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalCopyWith<$Res> get total {
    return $TotalCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsumableImplCopyWith<$Res>
    implements $ConsumableCopyWith<$Res> {
  factory _$$ConsumableImplCopyWith(
          _$ConsumableImpl value, $Res Function(_$ConsumableImpl) then) =
      __$$ConsumableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String dueDate,
      Total total,
      List<LabelValueUnit> consumptions,
      List<LabelValueUnit> prices,
      List<LabelValue> paymentRequisites});

  @override
  $TotalCopyWith<$Res> get total;
}

/// @nodoc
class __$$ConsumableImplCopyWithImpl<$Res>
    extends _$ConsumableCopyWithImpl<$Res, _$ConsumableImpl>
    implements _$$ConsumableImplCopyWith<$Res> {
  __$$ConsumableImplCopyWithImpl(
      _$ConsumableImpl _value, $Res Function(_$ConsumableImpl) _then)
      : super(_value, _then);

  /// Create a copy of Consumable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? dueDate = null,
    Object? total = null,
    Object? consumptions = null,
    Object? prices = null,
    Object? paymentRequisites = null,
  }) {
    return _then(_$ConsumableImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Total,
      consumptions: null == consumptions
          ? _value._consumptions
          : consumptions // ignore: cast_nullable_to_non_nullable
              as List<LabelValueUnit>,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<LabelValueUnit>,
      paymentRequisites: null == paymentRequisites
          ? _value._paymentRequisites
          : paymentRequisites // ignore: cast_nullable_to_non_nullable
              as List<LabelValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsumableImpl implements _Consumable {
  const _$ConsumableImpl(
      {required this.label,
      required this.dueDate,
      required this.total,
      required final List<LabelValueUnit> consumptions,
      required final List<LabelValueUnit> prices,
      required final List<LabelValue> paymentRequisites})
      : _consumptions = consumptions,
        _prices = prices,
        _paymentRequisites = paymentRequisites;

  factory _$ConsumableImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsumableImplFromJson(json);

  @override
  final String label;
  @override
  final String dueDate;
  @override
  final Total total;
  final List<LabelValueUnit> _consumptions;
  @override
  List<LabelValueUnit> get consumptions {
    if (_consumptions is EqualUnmodifiableListView) return _consumptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consumptions);
  }

  final List<LabelValueUnit> _prices;
  @override
  List<LabelValueUnit> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  final List<LabelValue> _paymentRequisites;
  @override
  List<LabelValue> get paymentRequisites {
    if (_paymentRequisites is EqualUnmodifiableListView)
      return _paymentRequisites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentRequisites);
  }

  @override
  String toString() {
    return 'Consumable(label: $label, dueDate: $dueDate, total: $total, consumptions: $consumptions, prices: $prices, paymentRequisites: $paymentRequisites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsumableImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._consumptions, _consumptions) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality()
                .equals(other._paymentRequisites, _paymentRequisites));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      dueDate,
      total,
      const DeepCollectionEquality().hash(_consumptions),
      const DeepCollectionEquality().hash(_prices),
      const DeepCollectionEquality().hash(_paymentRequisites));

  /// Create a copy of Consumable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsumableImplCopyWith<_$ConsumableImpl> get copyWith =>
      __$$ConsumableImplCopyWithImpl<_$ConsumableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsumableImplToJson(
      this,
    );
  }
}

abstract class _Consumable implements Consumable {
  const factory _Consumable(
      {required final String label,
      required final String dueDate,
      required final Total total,
      required final List<LabelValueUnit> consumptions,
      required final List<LabelValueUnit> prices,
      required final List<LabelValue> paymentRequisites}) = _$ConsumableImpl;

  factory _Consumable.fromJson(Map<String, dynamic> json) =
      _$ConsumableImpl.fromJson;

  @override
  String get label;
  @override
  String get dueDate;
  @override
  Total get total;
  @override
  List<LabelValueUnit> get consumptions;
  @override
  List<LabelValueUnit> get prices;
  @override
  List<LabelValue> get paymentRequisites;

  /// Create a copy of Consumable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsumableImplCopyWith<_$ConsumableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Total _$TotalFromJson(Map<String, dynamic> json) {
  return _Total.fromJson(json);
}

/// @nodoc
mixin _$Total {
  ValueUnit get consumed => throw _privateConstructorUsedError;
  ValueUnit get payable => throw _privateConstructorUsedError;

  /// Serializes this Total to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Total
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TotalCopyWith<Total> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalCopyWith<$Res> {
  factory $TotalCopyWith(Total value, $Res Function(Total) then) =
      _$TotalCopyWithImpl<$Res, Total>;
  @useResult
  $Res call({ValueUnit consumed, ValueUnit payable});

  $ValueUnitCopyWith<$Res> get consumed;
  $ValueUnitCopyWith<$Res> get payable;
}

/// @nodoc
class _$TotalCopyWithImpl<$Res, $Val extends Total>
    implements $TotalCopyWith<$Res> {
  _$TotalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Total
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consumed = null,
    Object? payable = null,
  }) {
    return _then(_value.copyWith(
      consumed: null == consumed
          ? _value.consumed
          : consumed // ignore: cast_nullable_to_non_nullable
              as ValueUnit,
      payable: null == payable
          ? _value.payable
          : payable // ignore: cast_nullable_to_non_nullable
              as ValueUnit,
    ) as $Val);
  }

  /// Create a copy of Total
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<$Res> get consumed {
    return $ValueUnitCopyWith<$Res>(_value.consumed, (value) {
      return _then(_value.copyWith(consumed: value) as $Val);
    });
  }

  /// Create a copy of Total
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueUnitCopyWith<$Res> get payable {
    return $ValueUnitCopyWith<$Res>(_value.payable, (value) {
      return _then(_value.copyWith(payable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TotalImplCopyWith<$Res> implements $TotalCopyWith<$Res> {
  factory _$$TotalImplCopyWith(
          _$TotalImpl value, $Res Function(_$TotalImpl) then) =
      __$$TotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValueUnit consumed, ValueUnit payable});

  @override
  $ValueUnitCopyWith<$Res> get consumed;
  @override
  $ValueUnitCopyWith<$Res> get payable;
}

/// @nodoc
class __$$TotalImplCopyWithImpl<$Res>
    extends _$TotalCopyWithImpl<$Res, _$TotalImpl>
    implements _$$TotalImplCopyWith<$Res> {
  __$$TotalImplCopyWithImpl(
      _$TotalImpl _value, $Res Function(_$TotalImpl) _then)
      : super(_value, _then);

  /// Create a copy of Total
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consumed = null,
    Object? payable = null,
  }) {
    return _then(_$TotalImpl(
      consumed: null == consumed
          ? _value.consumed
          : consumed // ignore: cast_nullable_to_non_nullable
              as ValueUnit,
      payable: null == payable
          ? _value.payable
          : payable // ignore: cast_nullable_to_non_nullable
              as ValueUnit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalImpl implements _Total {
  const _$TotalImpl({required this.consumed, required this.payable});

  factory _$TotalImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalImplFromJson(json);

  @override
  final ValueUnit consumed;
  @override
  final ValueUnit payable;

  @override
  String toString() {
    return 'Total(consumed: $consumed, payable: $payable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalImpl &&
            (identical(other.consumed, consumed) ||
                other.consumed == consumed) &&
            (identical(other.payable, payable) || other.payable == payable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, consumed, payable);

  /// Create a copy of Total
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalImplCopyWith<_$TotalImpl> get copyWith =>
      __$$TotalImplCopyWithImpl<_$TotalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalImplToJson(
      this,
    );
  }
}

abstract class _Total implements Total {
  const factory _Total(
      {required final ValueUnit consumed,
      required final ValueUnit payable}) = _$TotalImpl;

  factory _Total.fromJson(Map<String, dynamic> json) = _$TotalImpl.fromJson;

  @override
  ValueUnit get consumed;
  @override
  ValueUnit get payable;

  /// Create a copy of Total
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalImplCopyWith<_$TotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValueUnit _$ValueUnitFromJson(Map<String, dynamic> json) {
  return _ValueUnit.fromJson(json);
}

/// @nodoc
mixin _$ValueUnit {
  double get value => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this ValueUnit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueUnitCopyWith<ValueUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueUnitCopyWith<$Res> {
  factory $ValueUnitCopyWith(ValueUnit value, $Res Function(ValueUnit) then) =
      _$ValueUnitCopyWithImpl<$Res, ValueUnit>;
  @useResult
  $Res call({double value, String unit});
}

/// @nodoc
class _$ValueUnitCopyWithImpl<$Res, $Val extends ValueUnit>
    implements $ValueUnitCopyWith<$Res> {
  _$ValueUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueUnitImplCopyWith<$Res>
    implements $ValueUnitCopyWith<$Res> {
  factory _$$ValueUnitImplCopyWith(
          _$ValueUnitImpl value, $Res Function(_$ValueUnitImpl) then) =
      __$$ValueUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String unit});
}

/// @nodoc
class __$$ValueUnitImplCopyWithImpl<$Res>
    extends _$ValueUnitCopyWithImpl<$Res, _$ValueUnitImpl>
    implements _$$ValueUnitImplCopyWith<$Res> {
  __$$ValueUnitImplCopyWithImpl(
      _$ValueUnitImpl _value, $Res Function(_$ValueUnitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_$ValueUnitImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueUnitImpl implements _ValueUnit {
  const _$ValueUnitImpl({required this.value, required this.unit});

  factory _$ValueUnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueUnitImplFromJson(json);

  @override
  final double value;
  @override
  final String unit;

  @override
  String toString() {
    return 'ValueUnit(value: $value, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueUnitImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, unit);

  /// Create a copy of ValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueUnitImplCopyWith<_$ValueUnitImpl> get copyWith =>
      __$$ValueUnitImplCopyWithImpl<_$ValueUnitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueUnitImplToJson(
      this,
    );
  }
}

abstract class _ValueUnit implements ValueUnit {
  const factory _ValueUnit(
      {required final double value,
      required final String unit}) = _$ValueUnitImpl;

  factory _ValueUnit.fromJson(Map<String, dynamic> json) =
      _$ValueUnitImpl.fromJson;

  @override
  double get value;
  @override
  String get unit;

  /// Create a copy of ValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueUnitImplCopyWith<_$ValueUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LabelValueUnit _$LabelValueUnitFromJson(Map<String, dynamic> json) {
  return _LabelValueUnit.fromJson(json);
}

/// @nodoc
mixin _$LabelValueUnit {
  String get label => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this LabelValueUnit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LabelValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabelValueUnitCopyWith<LabelValueUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelValueUnitCopyWith<$Res> {
  factory $LabelValueUnitCopyWith(
          LabelValueUnit value, $Res Function(LabelValueUnit) then) =
      _$LabelValueUnitCopyWithImpl<$Res, LabelValueUnit>;
  @useResult
  $Res call({String label, double value, String unit});
}

/// @nodoc
class _$LabelValueUnitCopyWithImpl<$Res, $Val extends LabelValueUnit>
    implements $LabelValueUnitCopyWith<$Res> {
  _$LabelValueUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LabelValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelValueUnitImplCopyWith<$Res>
    implements $LabelValueUnitCopyWith<$Res> {
  factory _$$LabelValueUnitImplCopyWith(_$LabelValueUnitImpl value,
          $Res Function(_$LabelValueUnitImpl) then) =
      __$$LabelValueUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double value, String unit});
}

/// @nodoc
class __$$LabelValueUnitImplCopyWithImpl<$Res>
    extends _$LabelValueUnitCopyWithImpl<$Res, _$LabelValueUnitImpl>
    implements _$$LabelValueUnitImplCopyWith<$Res> {
  __$$LabelValueUnitImplCopyWithImpl(
      _$LabelValueUnitImpl _value, $Res Function(_$LabelValueUnitImpl) _then)
      : super(_value, _then);

  /// Create a copy of LabelValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_$LabelValueUnitImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabelValueUnitImpl implements _LabelValueUnit {
  const _$LabelValueUnitImpl(
      {required this.label, required this.value, required this.unit});

  factory _$LabelValueUnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabelValueUnitImplFromJson(json);

  @override
  final String label;
  @override
  final double value;
  @override
  final String unit;

  @override
  String toString() {
    return 'LabelValueUnit(label: $label, value: $value, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelValueUnitImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, value, unit);

  /// Create a copy of LabelValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelValueUnitImplCopyWith<_$LabelValueUnitImpl> get copyWith =>
      __$$LabelValueUnitImplCopyWithImpl<_$LabelValueUnitImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabelValueUnitImplToJson(
      this,
    );
  }
}

abstract class _LabelValueUnit implements LabelValueUnit {
  const factory _LabelValueUnit(
      {required final String label,
      required final double value,
      required final String unit}) = _$LabelValueUnitImpl;

  factory _LabelValueUnit.fromJson(Map<String, dynamic> json) =
      _$LabelValueUnitImpl.fromJson;

  @override
  String get label;
  @override
  double get value;
  @override
  String get unit;

  /// Create a copy of LabelValueUnit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabelValueUnitImplCopyWith<_$LabelValueUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LabelValue _$LabelValueFromJson(Map<String, dynamic> json) {
  return _LabelValue.fromJson(json);
}

/// @nodoc
mixin _$LabelValue {
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this LabelValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LabelValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabelValueCopyWith<LabelValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelValueCopyWith<$Res> {
  factory $LabelValueCopyWith(
          LabelValue value, $Res Function(LabelValue) then) =
      _$LabelValueCopyWithImpl<$Res, LabelValue>;
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class _$LabelValueCopyWithImpl<$Res, $Val extends LabelValue>
    implements $LabelValueCopyWith<$Res> {
  _$LabelValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LabelValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelValueImplCopyWith<$Res>
    implements $LabelValueCopyWith<$Res> {
  factory _$$LabelValueImplCopyWith(
          _$LabelValueImpl value, $Res Function(_$LabelValueImpl) then) =
      __$$LabelValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class __$$LabelValueImplCopyWithImpl<$Res>
    extends _$LabelValueCopyWithImpl<$Res, _$LabelValueImpl>
    implements _$$LabelValueImplCopyWith<$Res> {
  __$$LabelValueImplCopyWithImpl(
      _$LabelValueImpl _value, $Res Function(_$LabelValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of LabelValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$LabelValueImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabelValueImpl implements _LabelValue {
  const _$LabelValueImpl({required this.label, required this.value});

  factory _$LabelValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabelValueImplFromJson(json);

  @override
  final String label;
  @override
  final String value;

  @override
  String toString() {
    return 'LabelValue(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelValueImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  /// Create a copy of LabelValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelValueImplCopyWith<_$LabelValueImpl> get copyWith =>
      __$$LabelValueImplCopyWithImpl<_$LabelValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabelValueImplToJson(
      this,
    );
  }
}

abstract class _LabelValue implements LabelValue {
  const factory _LabelValue(
      {required final String label,
      required final String value}) = _$LabelValueImpl;

  factory _LabelValue.fromJson(Map<String, dynamic> json) =
      _$LabelValueImpl.fromJson;

  @override
  String get label;
  @override
  String get value;

  /// Create a copy of LabelValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabelValueImplCopyWith<_$LabelValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
