import 'package:apartment/state/period/providers/selectable_periods_provider.dart';
import 'package:apartment/state/period/providers/selected_period_provider.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/modals/select_modal.dart';
import 'package:apartment/views/modals/select_period_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PeriodSelector extends ConsumerWidget {
  const PeriodSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPeriod = ref.watch(selectedPeriodProvider).period?.period;
    final start = Settings.dayMonthFormat
        .format(DateTime.parse(selectedPeriod?.start ?? ''));
    final end = Settings.dayMonthYearFormat
        .format(DateTime.parse(selectedPeriod?.end ?? ''));
    return TextButton(
        onPressed: () {
          SelectPeriodModal(ref.read(selectablePeriodsProvider))
              .present(context)
              .then((value) => {
                    if (value != null)
                      {
                        ref
                            .read(selectedPeriodProvider.notifier)
                            .selectPeriod(value)
                      }
                  });
        },
        child: Row(mainAxisSize: MainAxisSize.min, spacing: 10, children: [
          Text(
              "${AppLocalizations.of(context).translate(TranslatableStrings.period)} $start - $end"),
          const Icon(Icons.arrow_drop_down)
        ]));
  }
}
