import 'dart:io';

import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/FileModel/ImageForCreatePost/ImageForCreatePost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CommentReelPost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/PostForCreate/PostForCreate.dart';
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

  Future updateStatusReactionPostShare(
      String token, UpdateReactionReelPost data) async {
    return await apiService.post(
        ApiEndPointConstants.apiUpdateReactionPostShare, data, token);
  }

  Future commentReelPost(String token, CommentReelPost data) async {
    return await apiService.post(
        ApiEndPointConstants.apiCommentReelPost, data, token);
  }

  Future commentReelPostShare(String token, CommentReelPost data) async {
    return await apiService.post(
        ApiEndPointConstants.apiCommentReelPostShare, data, token);
  }

  Future getAllCommentReelPost(String token, String idPost) async {
    return await apiService.get(
        ApiEndPointConstants.apiShowAllCommentReelPost(idPost), token);
  }

  Future getAllCommentReelPostShare(String token, String idPostShare) async {
    return await apiService.get(
        ApiEndPointConstants.apiShowAllCommentReelPostShare(idPostShare), token);
  }

    Future createPost(PostForCreate body, String token) async {
    return await apiService.postWithToken(ApiEndPointConstants.apiCreatePost, body, token);
  }

  Future uploadPostImage(ImageForCreatePost body, String token) async {
    final file = File(body.filePath); 
    return await apiService.uploadImage(ApiEndPointConstants.apiUploadPostImage, file,token);
  }
}
