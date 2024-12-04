import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class BlogRepo {
  final apiService = ApiService();

  Future getBlog(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetBlog, token);
  }
  Future getBlogById(String token, String id) async {
  final path = ApiEndPointConstants.apiGetBlogById.replaceFirst(':id', id);
  return await apiService.get(path, token);
}
}
