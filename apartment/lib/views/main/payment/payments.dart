import 'package:apartment/state/apartment/providers/apartment_provider.dart';
import 'package:apartment/state/period/providers/selected_period_provider.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/detail/payment_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Payments extends ConsumerWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedApartment = ref.watch(selectedApartmentProvider);
    final data = ref.watch(selectedPeriodProvider).period;
    final apartmentData = data?.apartments
        .where((a) => selectedApartment?.number.toString() == a.number)
        .first;
    final dueDates = apartmentData?.consumables.map((c) => c.dueDate).toList();
    dueDates?.sort((a, b) {
      DateTime dateA = Settings.dayMonthYearFormat.parse(a);
      DateTime dateB = Settings.dayMonthYearFormat.parse(b);

      return dateA.compareTo(dateB); // Ascending order
    });
    final earliestDueDate = dueDates?.first;
    final expenses = apartmentData!.consumables.map((c) => MapEntry(
        c.paymentRequisites
            .where((p) => p.label == Settings.receiverLabel)
            .map((p) => p.value)
            .first,
        c));

    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 5,
          children: [
            Row(children: [
              Text('$earliestDueDate',
                  style: Theme.of(context).textTheme.displayLarge)
            ]),
            Row(children: [
              Text(
                AppLocalizations.of(context)
                    .translate(TranslatableStrings.earliestDueDateForPayment),
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
                                builder: (BuildContext context) => PaymentView(
                                      period: data!.period,
                                      receiver: expense.key,
                                      amount: expense.value.total.payable.value
                                          .toStringAsFixed(2),
                                      dueDate: expense.value.dueDate,
                                      paymentRequisites:
                                          expense.value.paymentRequisites,
                                    )));
                      },
                      child: Column(spacing: 2, children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppLocalizations.of(context)
                                  .translate(expense.key)),
                              Text(expense.value.dueDate,
                                  style: getTextStyle(Settings
                                      .dayMonthYearFormat
                                      .parse(expense.value.dueDate)))
                            ]),
                        Row(
                          children: [
                            Text(
                                "${expense.value.total.payable.value.toStringAsFixed(2)} ${expense.value.total.payable.unit}"),
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
    ]);
  }

  TextStyle getTextStyle(DateTime date) {
    if (date.isBefore(DateTime.now())) {
      return const TextStyle(color: Colors.red);
    }
    return const TextStyle();
  }
}
