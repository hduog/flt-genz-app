import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class CateBlogRepo {
  final apiService = ApiService();

  Future getCateBlog(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetCateBlog, token);
  }
}
