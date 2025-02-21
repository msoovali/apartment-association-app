import 'package:apartment/state/apartment/providers/apartment_provider.dart';
import 'package:apartment/state/auth/providers/authentication_provider.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/modals/select_apartment_modal.dart';
import 'package:apartment/views/modals/select_modal.dart';
import 'package:apartment/views/start/start_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApartmentSelectionView extends ConsumerWidget {
  const ApartmentSelectionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authenticationProvider);
    final welcome =
        AppLocalizations.of(context).translate(TranslatableStrings.welcome);
    final greeting = authState.isAnonymous
        ? "$welcome!"
        : "$welcome, ${authState.displayName}!";

    return StartView(
        greeting: greeting,
        action: Column(children: [
          TextButton(
              onPressed: () {
                SelectApartmentModal().present(context).then((value) => {
                      if (value != null)
                        {
                          ref
                              .read(selectedApartmentProvider.notifier)
                              .selectApartment(value)
                        }
                    });
              },
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    const Icon(Icons.sensor_door_outlined),
                    Text(AppLocalizations.of(context)
                        .translate(TranslatableStrings.selectApartment)),
                    const Icon(Icons.arrow_drop_down)
                  ])),
          const Divider(
            indent: 70,
            endIndent: 70,
          )
        ]),
        notes: const [TranslatableStrings.selectApartmentNote]);
  }
}
