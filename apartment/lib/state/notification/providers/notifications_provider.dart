import 'package:apartment/state/notification/models/notification.dart';
import 'package:apartment/state/notification/storage/notifications_storage_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifications_provider.g.dart';

@riverpod
class Notifications extends _$Notifications {
  @override
  List<Notification> build() => NotificationStorageHelper().loadNotifications();

  void set(List<Notification> notifications) {
    state = notifications;
  }

  void markSeen() async {
    final seenNotifications =
        state.map((n) => n.copyWith(isSeen: true)).toList();
    await NotificationStorageHelper().saveNotifications(seenNotifications);
    state = seenNotifications;
  }
}
