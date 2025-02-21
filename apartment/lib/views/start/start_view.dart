import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/start/start_view_app_bar.dart';
import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  final String greeting;
  final Widget action;
  final List<String> notes;

  const StartView(
      {super.key,
      required this.greeting,
      required this.action,
      required this.notes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const StartViewAppBar(),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
              child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Spacer(),
                    Text(greeting,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        )),
                    const Spacer(),
                    action,
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              AppLocalizations.of(context)
                                  .translate(TranslatableStrings.notes),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 10,
                          ),
                          for (final note in notes)
                            Text(
                              '- ${AppLocalizations.of(context).translate(note)}',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ));
        }));
  }
}
