import 'package:apartment/router/router.dart';
import 'package:apartment/service/local_storage/local_storage_service.dart';
import 'package:apartment/service/push_notification/push_notification_service.dart';
import 'package:apartment/service/selectable_period/selectable_period_service.dart';
import 'package:apartment/state/language/providers/selected_language_provider.dart';
import 'package:apartment/state/notification/providers/notifications_provider.dart';
import 'package:apartment/state/notification/storage/notifications_storage_helper.dart';
import 'package:apartment/state/theme/providers/theme_provider.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/language.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';
import 'translation/localizations_delegate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    LocalStorageService().initialize(),
    AppLocalizations().initialize(),
    SelectablePeriodsService().initialize(),
  ]);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    PushNotificationService().initialize(ref);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      LocalStorageService().reload().then((_) => {
            ref
                .read(notificationsProvider.notifier)
                .set(NotificationStorageHelper().loadNotifications())
          });
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(customThemeProvider);
    return MaterialApp.router(
      title: 'Apartment expenses app',
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Language.supportedLocales,
      locale: ref.watch(selectedLanguageProvider).locale,
      theme: theme,
      routerConfig: router,
    );
  }
}
