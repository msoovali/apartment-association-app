import 'package:apartment/state/period/models/period_model.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/detail/detail_view.dart';
import 'package:apartment/views/detail/label_value.dart';
import 'package:flutter/material.dart';

class ExpenseDetailView extends StatelessWidget {
  final Period period;
  final Consumable consumable;

  const ExpenseDetailView(
      {super.key, required this.period, required this.consumable});

  @override
  Widget build(BuildContext context) {
    return DetailView(
      title:
          '${AppLocalizations.of(context).translate(consumable.label)} ${Settings.dayMonthFormat.format(DateTime.parse(period.start))} - ${Settings.dayMonthYearFormat.format(DateTime.parse(period.end))}',
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 5,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                  '${consumable.total.consumed.value.toStringAsFixed(3)} ${consumable.total.consumed.unit}',
                  style: Theme.of(context).textTheme.displayLarge),
              Text(
                  '${consumable.total.payable.value.toStringAsFixed(2)} ${consumable.total.payable.unit}',
                  style: Theme.of(context).textTheme.displayLarge),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                AppLocalizations.of(context)
                    .translate(TranslatableStrings.total),
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                AppLocalizations.of(context)
                    .translate(TranslatableStrings.payable),
                style: Theme.of(context).textTheme.labelMedium,
              )
            ]),
            const Divider(),
            Column(
              spacing: 10,
              children: [
                for (final consumption in consumable.consumptions)
                  LabelValueWidget(
                      label: consumption.label,
                      value:
                          '${consumption.value.toStringAsFixed(3)} ${consumption.unit}')
              ],
            ),
            const Divider(),
            Column(
              spacing: 10,
              children: [
                for (final price in consumable.prices)
                  LabelValueWidget(
                      label: price.label,
                      value: '${price.value.toStringAsFixed(3)} ${price.unit}')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
