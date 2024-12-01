import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class NotificationRepo {
  final apiService = ApiService();

  Future getNotification(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetNotification, token);
  }
}
