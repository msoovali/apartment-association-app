import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LabelValueWidget extends StatelessWidget {
  final String label;
  final String value;
  final bool copyable;

  const LabelValueWidget(
      {super.key,
      required this.label,
      required this.value,
      this.copyable = false});

  @override
  Widget build(BuildContext context) {
    final copiedToClipBoard = AppLocalizations.of(context)
        .translate(TranslatableStrings.copiedToClipboard);
    final scaffoldMessengerState = ScaffoldMessenger.of(context);
    return Column(children: [
      Row(children: [
        Expanded(
          child: Text(AppLocalizations.of(context).translate(label),
              style: Theme.of(context).textTheme.labelMedium),
        ),
      ]),
      Row(spacing: 5, children: [
        Text(
          value,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        copyable
            ? GestureDetector(
                child: const Icon(Icons.copy),
                onTap: () {
                  Clipboard.setData(ClipboardData(text: value)).then((_) {
                    scaffoldMessengerState.showSnackBar(
                        SnackBar(content: Text(copiedToClipBoard)));
                  });
                })
            : Container()
      ]),
    ]);
  }
}
