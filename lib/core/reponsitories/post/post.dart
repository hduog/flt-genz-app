import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CommentReelPost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/UpdateReactionReelPost.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class PostRepo {
  final apiService = ApiService();

  Future getPostValid(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetValidPost, token);
  }

  Future updateStatusReactionReel(
      String token, UpdateReactionReelPost data) async {
    return await apiService.post(
        ApiEndPointConstants.apiUpdateReactionReel, data, token);
  }

  Future commentReelPost(String token, CommentReelPost data) async {
    return await apiService.post(
        ApiEndPointConstants.apiCommentReelPost, data, token);
  }

  Future getAllCommentReelPost(String token, String idPost) async {
    return await apiService.get(
        ApiEndPointConstants.apiShowAllCommentReelPost(idPost), token);
  }
}
