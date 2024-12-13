import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CommentReelPost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/UpdateReactionReelPost.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class PostRepo {
  final apiService = ApiService();

  Future<Response?> getPostValid(String token, {int limit = 5, int pageNo = 1}) async {
  // Xây dựng URL với các tham số query
  final String url = '${ApiEndPointConstants.apiGetValidPost}?limit=$limit&page=$pageNo';

  try {
    // Gọi API qua apiService
    final response = await apiService.get(url, token);
    return response;
  } catch (e) {
    // Log lỗi để debug
    debugPrint("Error fetching posts from $url: $e");
    return null;
  }
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
}
