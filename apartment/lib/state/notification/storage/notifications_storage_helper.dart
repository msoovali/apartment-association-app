import 'dart:convert';

import 'package:apartment/service/local_storage/local_storage_service.dart';
import 'package:apartment/state/notification/models/notification.dart';
import 'package:apartment/views/constants/localstorage.dart';

class NotificationStorageHelper {
  List<Notification> loadNotifications() {
    final notificationsJson =
        LocalStorageService().getString(LocalStorageKeys.notifications);
    if (notificationsJson == null) {
      return List<Notification>.empty(growable: true);
    }
    List<dynamic> notifications = jsonDecode(notificationsJson);
    return notifications.map((n) => Notification.fromJson(n)).toList();
  }

  Future<void> saveNotifications(List<Notification> notifications) async {
    await LocalStorageService()
        .setString(LocalStorageKeys.notifications, jsonEncode(notifications));
  }
}
