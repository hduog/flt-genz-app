import 'dart:io';

import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/FileModel/ImageForCreate/ImageForCreate.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class ProfileRepo {
  final apiService = ApiService();

  Future getMyAccountProfile(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetMyAccountProfile, token);
  }

  Future patchMyProfile(String token, Map<String, dynamic> data) async {
    return await apiService.patch(ApiEndPointConstants.apiPatchMyProfile, data, token);
  }

  Future uploadAvatar(ImageForCreate body, String token) async {
    final file = File(body.filePath);
    return await apiService.uploadImage(ApiEndPointConstants.apiUploadAvatarImage, file, token);
  }

  Future uploadBanner(ImageForCreate body, String token) async {
    final file = File(body.filePath);
    return await apiService.uploadImage(ApiEndPointConstants.apiUploadBannerImage, file, token);
  }

    //Other account 
  Future getProfileOtherAccount(String token, String id) async {
    return await apiService.get(ApiEndPointConstants.apiOtherAccountProfile(id),token);
  }
}
