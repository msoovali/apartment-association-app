import 'package:apartment/state/period/models/period_model.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/detail/detail_view.dart';
import 'package:apartment/views/detail/label_value.dart';
import 'package:flutter/material.dart';

class PricesView extends StatelessWidget {
  final Period period;
  final List<LabelValueUnit> prices;

  const PricesView({super.key, required this.period, required this.prices});

  @override
  Widget build(BuildContext context) {
    return DetailView(
      title:
          '${AppLocalizations.of(context).translate(TranslatableStrings.priceListForPeriod)} ${Settings.dayMonthFormat.format(DateTime.parse(period.start))} - ${Settings.dayMonthYearFormat.format(DateTime.parse(period.end))}',
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          spacing: 10,
          children: [
            for (final price in prices)
              LabelValueWidget(
                  label: price.label,
                  value: '${price.value.toStringAsFixed(3)} ${price.unit}'),
          ],
        ),
      ),
    );
  }
}
