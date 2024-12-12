import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/LoginModel/RegistrationPost.dart';
import 'package:flutter_application_1/core/data/models/LoginModel/LoginPost.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class AuthRepo {
  final apiService = ApiService();

  Future login(LoginPostModel body) async {
    return await apiService.post(ApiEndPointConstants.apiLogin, body, null);
  }

  Future registration(RegistrationPost body) async {
    return await apiService.post(
        ApiEndPointConstants.apiRegistration, body, null);
  }

  Future getBasicInfoByToken(String token) async {
    return await apiService.get(
        ApiEndPointConstants.apiGetBasicInfoAccountByToken, token);
  }
}
