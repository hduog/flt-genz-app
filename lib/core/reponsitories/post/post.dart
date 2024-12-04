import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class PostRepo {
  final apiService = ApiService();

  Future getPostValid(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetValidPost, token);
  }
  Future getPostMySelf(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetPostMySelf, token);
  }
}
