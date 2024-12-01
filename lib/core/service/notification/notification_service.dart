import 'package:flutter_application_1/core/data/models/NotificationModel/NotificationData/NotificationData.dart';
import 'package:flutter_application_1/core/reponsitories/notification/notification.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:shared_preferences/shared_preferences.dart';

class NotificationService {
  final notificationRepo = NotificationRepo();

  Future<List<NotificationData>?> getNotifications(WidgetRef ref) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await notificationRepo.getNotification(token);
      if (response?.statusCode == 200) {
        List<dynamic> data = response.data as List<dynamic>;
        List<NotificationData> notifications =
            data.map((item) => NotificationData.fromJson(item)).toList();
        return notifications;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
