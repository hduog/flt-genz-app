import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class ProfileRepo {
  final apiService = ApiService();

  Future getMyAccountProfile(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetMyAccountProfile, token);
  }
 Future patchMyProfile(String token, String id, Map<String, dynamic> data) async {
  final path = ApiEndPointConstants.apiPatchMyProfile.replaceAll(":id", id);
  return await apiService.patch(path, data, token);
}
Future getProfileOtherAccount(String token, String id) async {
    return await apiService.get(ApiEndPointConstants.apiOtherAccountProfile(id),token);
  }

}
