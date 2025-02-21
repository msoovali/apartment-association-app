import 'package:apartment/state/auth/providers/authentication_provider.dart';
import 'package:apartment/state/period/providers/selected_period_provider.dart';
import 'package:apartment/state/readings/providers/submit_readings_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_loading_provider.g.dart';

@riverpod
bool isLoading(Ref ref) {
  final authProvider = ref.watch(authenticationProvider);
  final submitReadings = ref.watch(submitReadingsProvider);
  final selectedPeriod = ref.watch(selectedPeriodProvider);

  return authProvider.isLoading ||
      submitReadings.isLoading ||
      selectedPeriod.isLoading;
}
