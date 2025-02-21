import 'dart:developer';

import 'package:apartment/state/apartment/models/apartment.dart';
import 'package:apartment/state/apartment/providers/apartment_provider.dart';
import 'package:apartment/state/auth/providers/authentication_provider.dart';
import 'package:apartment/state/readings/providers/submit_readings_provider.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/main/readings/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubmitReadingsView extends ConsumerStatefulWidget {
  const SubmitReadingsView({super.key});

  @override
  SubmitReadingsState createState() => SubmitReadingsState();
}

class SubmitReadingsState extends ConsumerState<SubmitReadingsView> {
  final _coldWaterController = TextEditingController();
  final _hotWaterController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _coldWaterController.dispose();
    _hotWaterController.dispose();
    super.dispose();
  }

  Future<void> _attemptSubmit(
      Apartment? apartment, String spreadSheetName) async {
    if (apartment != null && _formKey.currentState!.validate()) {
      final coldWater = _coldWaterController.text;
      final hotWater = _hotWaterController.text;
      log('Submitting readings: coldWater: $coldWater, hotWater: $hotWater, apartment: $apartment, spreadSheetName: $spreadSheetName');
      final submitReadings = ref.watch(submitReadingsProvider.notifier);
      return submitReadings.submitReading(
          coldWater, hotWater, apartment, spreadSheetName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final apartment = ref.watch(selectedApartmentProvider);
    final now = DateTime.now();
    int periodMonth = now.month == 1 ? 12 : now.month - 1;
    int periodYear = now.month == 1 ? now.year - 1 : now.year;
    final spreadSheetName = '${periodYear}_$periodMonth';
    final message = ref.watch(authenticationProvider).isAnonymous
        ? TranslatableStrings.continueAnonymouslyNote
        : ref.watch(submitReadingsProvider).submittedPeriod == spreadSheetName
            ? TranslatableStrings.currentPeriodReadingsAreSubmitted
            : null;
    return Padding(
      padding: const EdgeInsets.all(70.0),
      child: message != null
          ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: Text(
                  AppLocalizations.of(context).translate(message),
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              )
            ])
          : Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _coldWaterController,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)
                          .translate(TranslatableStrings.coldWater),
                      border: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) => validateReading(value, context),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _hotWaterController,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)
                          .translate(TranslatableStrings.hotWater),
                      border: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) => validateReading(value, context),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _attemptSubmit(apartment, spreadSheetName)
                          .catchError((error) {
                        log('Readings submit failed: $error');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(AppLocalizations.of(context)
                                .translate(
                                    TranslatableStrings.submitReadingsFailed)),
                          ),
                        );
                      });
                    },
                    child: Text(AppLocalizations.of(context)
                        .translate(TranslatableStrings.submitReadings)),
                  ),
                ],
              ),
            ),
    );
  }
}
