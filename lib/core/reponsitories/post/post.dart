import 'dart:io';

import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/FileModel/ImageForCreatePost/ImageForCreatePost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CommentReelPost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CreatePostShare.dart';
import 'package:flutter_application_1/core/data/models/PostModel/PostForCreate/PostForCreate.dart';
import 'package:flutter_application_1/core/data/models/PostModel/UpdateReactionReelPost.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class PostRepo {
  final apiService = ApiService();

  Future getPostValid(String token, String? query) async {
    return await apiService.get(
        ApiEndPointConstants.apiGetValidPost(query), token);
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
        ApiEndPointConstants.apiShowAllCommentReelPostShare(idPostShare),
        token);
  }

  Future createPost(PostForCreate body, String token) async {
    return await apiService.postWithToken(
        ApiEndPointConstants.apiCreatePost, body, token);
  }

  Future uploadPostImage(ImageForCreatePost body, String token) async {
    final file = File(body.filePath);
    return await apiService.uploadImage(
        ApiEndPointConstants.apiUploadPostImage, file, token);
  }

  Future getPostMySelf(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetPostMySelf, token);
  }

  Future createPostShare (CreatePostShare data, String token) async {
    return await apiService.postWithToken(
        ApiEndPointConstants.apiCreatePostShare, data, token);
  }

  Future getPostShareMySelf(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetPostShareMySelf, token);
  }

  //Other account
    Future getPostOtherAccount(String token, String id) async {
    return await apiService.get(ApiEndPointConstants.apiPostOtherAccountProfile(id),token);
  }
   Future getPostShareOtherAccount(String token, String id) async {
    return await apiService.get(ApiEndPointConstants.apiPostShareOtherAccountProfile(id),token);
  }
  
}
