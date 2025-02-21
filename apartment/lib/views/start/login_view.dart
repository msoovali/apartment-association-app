import 'package:apartment/state/auth/providers/authentication_provider.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/start/start_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> attemptAnonymousLogin() async {
      final authProvider = ref.read(authenticationProvider.notifier);
      await authProvider.loginAnonymously();
    }

    Future<void> attemptGoogleLogin() async {
      final authProvider = ref.read(authenticationProvider.notifier);
      await authProvider.loginWithGoogle();
    }

    return StartView(
        greeting: Strings.associationName,
        action: Column(children: [
          ElevatedButton(
              onPressed: () {
                attemptGoogleLogin();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  const FaIcon(FontAwesomeIcons.google),
                  Text(AppLocalizations.of(context)
                      .translate(TranslatableStrings.signInWithGoogle)),
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    AppLocalizations.of(context)
                        .translate(TranslatableStrings.or),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              attemptAnonymousLogin();
            },
            child: Text(AppLocalizations.of(context)
                .translate(TranslatableStrings.continueAnonymously)),
          )
        ]),
        notes: const [
          TranslatableStrings.googleSignInNote,
          TranslatableStrings.continueAnonymouslyNote
        ]);
  }
}
