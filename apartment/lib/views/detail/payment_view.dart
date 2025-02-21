import 'package:apartment/state/period/models/period_model.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/detail/detail_view.dart';
import 'package:apartment/views/detail/label_value.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  final String receiver;
  final Period period;
  final String amount;
  final String dueDate;
  final List<LabelValue> paymentRequisites;

  const PaymentView(
      {super.key,
      required this.receiver,
      required this.period,
      required this.amount,
      required this.dueDate,
      required this.paymentRequisites});

  @override
  Widget build(BuildContext context) {
    return DetailView(
      title:
          '$receiver ${AppLocalizations.of(context).translate(TranslatableStrings.paymentDetailsForPeriod)} ${Settings.dayMonthFormat.format(DateTime.parse(period.start))} - ${Settings.dayMonthYearFormat.format(DateTime.parse(period.end))}',
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          spacing: 10,
          children: [
            LabelValueWidget(
                label: TranslatableStrings.dueDate, value: dueDate),
            for (final paymentRequisite in paymentRequisites)
              LabelValueWidget(
                label: paymentRequisite.label,
                value: paymentRequisite.value,
                copyable: true,
              ),
            LabelValueWidget(
              label: TranslatableStrings.payable,
              value: amount,
              copyable: true,
            ),
          ],
        ),
      ),
    );
  }
}
