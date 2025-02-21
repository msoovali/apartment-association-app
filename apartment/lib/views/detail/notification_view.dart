import 'package:apartment/state/notification/models/notification.dart'
    as notice;
import 'package:apartment/translation/localization.dart';
import 'package:apartment/views/constants/settings.dart';
import 'package:apartment/views/constants/strings.dart';
import 'package:apartment/views/detail/detail_view.dart';
import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  final List<notice.Notification> notifications;

  const NotificationsView({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return DetailView(
        title: AppLocalizations.of(context)
            .translate(TranslatableStrings.notifications),
        content: Column(
          children: [
            for (final notification in notifications)
              Column(spacing: 5, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    spacing: 20,
                    children: [
                      notification.isSeen
                          ? Container(
                              width: 9,
                            )
                          : Badge(
                              smallSize: 9,
                              backgroundColor: Colors.blue,
                              isLabelVisible: !notification.isSeen,
                            ),
                      Column(
                        spacing: 5,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                notification.text,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          Row(children: [
                            Text(
                              Settings.dayMonthYearFormat
                                  .format(notification.createdAt),
                              style: Theme.of(context).textTheme.labelMedium,
                            )
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(),
              ]),
          ],
        ));
  }
}
