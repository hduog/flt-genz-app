import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class BlogRepo {
  final apiService = ApiService();

  Future getBlog(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetBlog, token);
  }
}
