import 'package:apartment/state/apartment/providers/apartment_provider.dart';
import 'package:apartment/state/period/providers/selected_period_provider.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/detail/expense_detail_view.dart';
import 'package:apartment/views/detail/prices_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Expenses extends ConsumerWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedApartment = ref.watch(selectedApartmentProvider);
    final data = ref.watch(selectedPeriodProvider).period;
    final apartmentData = data?.apartments
        .where((a) => selectedApartment?.number.toString() == a.number)
        .first;
    final totalPayable = apartmentData?.consumables
        .map((c) => c.total)
        .map((t) => t.payable)
        .map((p) => p.value)
        .reduce((a, b) => a + b)
        .toStringAsFixed(2);
    final expenses =
        apartmentData!.consumables.map((c) => MapEntry(c.label, c));
    final prices = apartmentData.consumables
        .map((c) => c.prices)
        .expand((p) => p)
        .toList();

    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 5,
          children: [
            Row(children: [
              Text('$totalPayable ${Settings.currency}',
                  style: Theme.of(context).textTheme.displayLarge)
            ]),
            Row(children: [
              Text(
                AppLocalizations.of(context)
                    .translate(TranslatableStrings.total),
                style: Theme.of(context).textTheme.labelMedium,
              )
            ])
          ],
        ),
      ),
      const Divider(),
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (final (index, expense) in expenses.indexed)
              Column(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    ExpenseDetailView(
                                        period: data!.period,
                                        consumable: expense.value)));
                      },
                      child: Column(spacing: 2, children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppLocalizations.of(context)
                                  .translate(expense.key)),
                              Text(
                                  "${expense.value.total.payable.value.toStringAsFixed(2)} ${Settings.currency}")
                            ]),
                        Row(
                          children: [
                            Text(
                                "${expense.value.total.consumed.value.toStringAsFixed(3)} ${expense.value.total.consumed.unit}"),
                          ],
                        ),
                      ])),
                  index == expenses.length - 1
                      ? const SizedBox()
                      : const Divider()
                ],
              ),
          ],
        ),
      ),
      const Divider(),
      TextButton(
          onPressed: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (BuildContext context) =>
                        PricesView(period: data!.period, prices: prices)));
          },
          child: Text(AppLocalizations.of(context)
              .translate(TranslatableStrings.viewPeriodPriceList))),
    ]);
  }
}
