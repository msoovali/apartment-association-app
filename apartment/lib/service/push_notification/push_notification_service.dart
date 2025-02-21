import 'dart:developer';

import 'package:apartment/service/local_storage/local_storage_service.dart';
import 'package:apartment/state/notification/models/notification.dart';
import 'package:apartment/state/notification/providers/notifications_provider.dart';
import 'package:apartment/state/notification/storage/notifications_storage_helper.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<List<Notification>> _handleMessage(
    RemoteMessage message, String context) async {
  log('[$context]');
  log('Title: ${message.notification?.title}');
  log('Body: ${message.notification?.body}');
  log('Data: ${message.data}');
  final notification = Notification(
    title: message.notification?.title ?? '',
    text: message.notification?.body ?? '',
    isSeen: false,
    createdAt: DateTime.now(),
  );
  final notifications = NotificationStorageHelper().loadNotifications();
  // add the new notification to the list as first element
  notifications.insert(0, notification);
  await NotificationStorageHelper().saveNotifications(notifications);
  return notifications;
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await LocalStorageService().initialize();
  await _handleMessage(message, "Notification received in BACKGROUND");
}

class PushNotificationService {
  static final PushNotificationService _instance =
      PushNotificationService._internal();

  factory PushNotificationService() => _instance;

  PushNotificationService._internal();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initialize(WidgetRef ref) async {
    final settings = await _firebaseMessaging.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      log('User denied push notification permissions.');
      return;
    }

    try {
      final token = await _firebaseMessaging.getToken();
      if (token != null) {
        log("FCM token: $token");
        final initialMessage = await _firebaseMessaging.getInitialMessage();

        if (initialMessage != null) {
          await _handleMessage(
              initialMessage, 'App opened from TERMINATED state');
        }

        FirebaseMessaging.onBackgroundMessage(
            _firebaseMessagingBackgroundHandler);

        FirebaseMessaging.onMessage.listen((message) async {
          final notifications = await _handleMessage(
              message, 'Notification received in FOREGROUND');
          ref.read(notificationsProvider.notifier).set(notifications);
        });
      }
    } catch (e) {
      log('Failed to initialize push notifications: $e');
    }
  }
}
