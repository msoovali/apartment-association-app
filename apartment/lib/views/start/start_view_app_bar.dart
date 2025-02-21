import 'package:apartment/state/language/providers/selected_language_provider.dart';
import 'package:apartment/state/theme/providers/theme_provider.dart';
import 'package:apartment/views/modals/select_language_modal.dart';
import 'package:apartment/views/modals/select_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartViewAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const StartViewAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLanguage = ref.watch(selectedLanguageProvider);
    final themeNotifier = ref.read(customThemeProvider.notifier);
    return AppBar(
      actions: [
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
            child: Text('${selectedLanguage.flag} ${selectedLanguage.name}')),
        IconButton(
            onPressed: themeNotifier.toggleTheme,
            icon: (const Icon(Icons.brightness_6))),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
