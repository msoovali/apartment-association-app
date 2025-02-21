import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_state.freezed.dart';

@freezed
class ReadingState with _$ReadingState {
  const factory ReadingState({
    required String? submittedPeriod,
    required bool isLoading,
  }) = _ReadingState;

  factory ReadingState.unknown() => const ReadingState(
        submittedPeriod: null,
        isLoading: false,
      );
}
