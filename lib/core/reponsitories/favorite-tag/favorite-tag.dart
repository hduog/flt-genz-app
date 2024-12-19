import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class FavoriteTagRepo {
  final apiService = ApiService();

  Future getFavoriteTag(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetFavoriteTag, token);
  }
}
