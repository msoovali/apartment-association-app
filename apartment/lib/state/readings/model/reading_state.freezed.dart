// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReadingState {
  String? get submittedPeriod => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of ReadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingStateCopyWith<ReadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingStateCopyWith<$Res> {
  factory $ReadingStateCopyWith(
          ReadingState value, $Res Function(ReadingState) then) =
      _$ReadingStateCopyWithImpl<$Res, ReadingState>;
  @useResult
  $Res call({String? submittedPeriod, bool isLoading});
}

/// @nodoc
class _$ReadingStateCopyWithImpl<$Res, $Val extends ReadingState>
    implements $ReadingStateCopyWith<$Res> {
  _$ReadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submittedPeriod = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      submittedPeriod: freezed == submittedPeriod
          ? _value.submittedPeriod
          : submittedPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingStateImplCopyWith<$Res>
    implements $ReadingStateCopyWith<$Res> {
  factory _$$ReadingStateImplCopyWith(
          _$ReadingStateImpl value, $Res Function(_$ReadingStateImpl) then) =
      __$$ReadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? submittedPeriod, bool isLoading});
}

/// @nodoc
class __$$ReadingStateImplCopyWithImpl<$Res>
    extends _$ReadingStateCopyWithImpl<$Res, _$ReadingStateImpl>
    implements _$$ReadingStateImplCopyWith<$Res> {
  __$$ReadingStateImplCopyWithImpl(
      _$ReadingStateImpl _value, $Res Function(_$ReadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submittedPeriod = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$ReadingStateImpl(
      submittedPeriod: freezed == submittedPeriod
          ? _value.submittedPeriod
          : submittedPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReadingStateImpl implements _ReadingState {
  const _$ReadingStateImpl(
      {required this.submittedPeriod, required this.isLoading});

  @override
  final String? submittedPeriod;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ReadingState(submittedPeriod: $submittedPeriod, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingStateImpl &&
            (identical(other.submittedPeriod, submittedPeriod) ||
                other.submittedPeriod == submittedPeriod) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submittedPeriod, isLoading);

  /// Create a copy of ReadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingStateImplCopyWith<_$ReadingStateImpl> get copyWith =>
      __$$ReadingStateImplCopyWithImpl<_$ReadingStateImpl>(this, _$identity);
}

abstract class _ReadingState implements ReadingState {
  const factory _ReadingState(
      {required final String? submittedPeriod,
      required final bool isLoading}) = _$ReadingStateImpl;

  @override
  String? get submittedPeriod;
  @override
  bool get isLoading;

  /// Create a copy of ReadingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingStateImplCopyWith<_$ReadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
