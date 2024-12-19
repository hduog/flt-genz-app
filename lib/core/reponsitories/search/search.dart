import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class SearchRepo {
  final apiService = ApiService();

  Future searchUser(String? keyword, String token) async {
    return await apiService.get(ApiEndPointConstants.apiSearchUser(keyword), token);
  }

  Future searchPosts(String? keyword, String token) async {
    return await apiService.get(ApiEndPointConstants.apiSearchPost(keyword), token);
  }
}

