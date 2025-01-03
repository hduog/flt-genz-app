import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/FollowModel/FollowForCreate/FollowForCreate.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class FollowRepo {
  final apiService = ApiService();

  Future sendRequestFollow(FollowForCreate body, String token) async {
    return await apiService.postWithToken(ApiEndPointConstants.apisendFollow, body, token);
  }
  Future checkStatusFollow(String reciverId, String token) async {
    return await apiService.get(ApiEndPointConstants.apicheckStatusFollow(reciverId) ,token);
  }
  Future unFollow(String id, String token) async {
    return await apiService.delete(ApiEndPointConstants.apiUnFollow(id), token);
  }
  Future unRequestFollow(String id, String token) async {
    return await apiService.delete(ApiEndPointConstants.apiUnRequestFollow(id), token);
  }
}
