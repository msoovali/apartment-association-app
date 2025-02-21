import 'package:apartment/state/notification/providers/notifications_provider.dart';
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/detail/notification_view.dart';
import 'package:apartment/views/main/home/expenses.dart';
import 'package:apartment/views/main/main_drawer.dart';
import 'package:apartment/views/main/payment/payments.dart';
import 'package:apartment/views/main/period_selector.dart';
import 'package:apartment/views/main/readings/readings_title.dart';
import 'package:apartment/views/main/readings/submit_readings_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainView extends ConsumerStatefulWidget {
  const MainView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView> {
  int _currentIndex = 0;
  final List<Widget> screens = [
    const Expenses(),
    const SubmitReadingsView(),
    const Payments(),
  ];
  final List<Widget> appBarTitles = [
    const PeriodSelector(),
    const ReadingsTitle(),
    const PeriodSelector(),
  ];

  @override
  Widget build(BuildContext context) {
    final notifications = ref.watch(notificationsProvider);
    final unseenCount = notifications.where((n) => !n.isSeen).length;
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 0,
        title: appBarTitles[_currentIndex],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => NotificationsView(
                              notifications: notifications,
                            ))).then(
                    (_) => ref.read(notificationsProvider.notifier).markSeen());
              },
              icon: Badge.count(
                  backgroundColor: Colors.blue,
                  isLabelVisible: unseenCount != 0,
                  count: unseenCount,
                  child: const Icon(Icons.notifications))),
        ],
      ),
      body: SingleChildScrollView(child: screens[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: AppLocalizations.of(context)
                .translate(TranslatableStrings.homeTab),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.add_circle_outline),
            label: AppLocalizations.of(context)
                .translate(TranslatableStrings.addReadingTab),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.attach_money),
            label: AppLocalizations.of(context)
                .translate(TranslatableStrings.paymentsTab),
          ),
        ],
      ),
    );
  }
}
