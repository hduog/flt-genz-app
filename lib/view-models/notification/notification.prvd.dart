import 'package:flutter_application_1/core/data/models/NotificationModel/NotificationData/NotificationData.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationNotifier extends StateNotifier<List<NotificationData>> {
  NotificationNotifier() : super([]);

  void setNotifications(List<NotificationData> notifications) {
    state = notifications;
  }

  List<NotificationData> getData() {
    return state;
  }
}

final notificationProvider = StateNotifierProvider<NotificationNotifier, List<NotificationData>>((ref) {
  return NotificationNotifier();
});
