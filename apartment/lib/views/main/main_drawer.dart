import 'package:apartment/state/apartment/providers/apartment_provider.dart';
import 'package:apartment/state/auth/providers/authentication_provider.dart';
import 'package:apartment/state/language/providers/selected_language_provider.dart';
import 'package:apartment/state/theme/providers/theme_provider.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/modals/select_language_modal.dart';
import 'package:apartment/views/modals/select_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainDrawer extends ConsumerWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authenticationProvider);
    final apartment = ref.watch(selectedApartmentProvider);
    final selectedLanguage = ref.watch(selectedLanguageProvider);
    final loggedInAsName = authState.isAnonymous
        ? AppLocalizations.of(context)
            .translate(TranslatableStrings.loggedInAsGuest)
        : "${authState.displayName}";

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Text(loggedInAsName, style: Theme.of(context).textTheme.bodyLarge),
            Text(
                '${AppLocalizations.of(context).translate(TranslatableStrings.apartment)}: ${apartment?.number}',
                style: Theme.of(context).textTheme.labelMedium),
            const Divider(),
            TextButton(
                onPressed: () {
                  SelectLanguageModal().present(context).then((value) {
                    if (value != null) {
                      ref
                          .read(selectedLanguageProvider.notifier)
                          .selectLanguage(value);
                    }
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Text(selectedLanguage.flag),
                    Text(selectedLanguage.name)
                  ],
                )),
            TextButton(
                onPressed: () {
                  ref.read(selectedApartmentProvider.notifier).clear();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    const Icon(Icons.sensor_door_outlined),
                    Text(AppLocalizations.of(context)
                        .translate(TranslatableStrings.selectApartment))
                  ],
                )),
            TextButton(
                onPressed: () {
                  ref.read(customThemeProvider.notifier).toggleTheme();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    const Icon(Icons.brightness_6),
                    Text(AppLocalizations.of(context)
                        .translate(TranslatableStrings.switchTheme))
                  ],
                )),
            const Spacer(),
            TextButton(
                onPressed: () async {
                  await ref.read(authenticationProvider.notifier).logOut();
                  ref.read(selectedApartmentProvider.notifier).clear();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    const Icon(Icons.logout),
                    Text(AppLocalizations.of(context)
                        .translate(TranslatableStrings.logOut))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
