import 'package:flutter_application_1/core/data/models/CommentFullGet/CommentFullGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CommentReelPost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/UpdateReactionReelPost.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/PostInfoGet/PostInfoGet.dart';
import 'package:flutter_application_1/core/reponsitories/post/post.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PostService {
  final postRepo = PostRepo();

  Future<List<DataGet>?> getPosts(WidgetRef ref) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await postRepo.getPostValid(token);
      if (response?.statusCode == 200) {
        PostInfoGet postInfo = PostInfoGet.fromJson(response.data);
        return postInfo.data;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  Future updateStatusReaction(UpdateReactionReelPost data) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await postRepo.updateStatusReactionReel(token, data);
      if (response?.statusCode == 201) {
        return true;
      }
    }
  }

  Future updateStatusReactionPostShare(UpdateReactionReelPost data) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await postRepo.updateStatusReactionPostShare(token, data);
      if (response?.statusCode == 201) {
        return true;
      }
    }
  }

  Future commentReelPost(CommentReelPost data) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await postRepo.commentReelPost(token, data);
      if (response?.statusCode == 201) {
        return true;
      }
    }
  }

  Future commentReelPostShare(CommentReelPost data) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await postRepo.commentReelPostShare(token, data);
      if (response?.statusCode == 201) {
        return true;
      }
    }
  }

  Future<List<CommentFullGet>?> getAllCommentReelPost(String idPost) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await postRepo.getAllCommentReelPost(token, idPost);
      if (response?.statusCode == 200) {
        List<CommentFullGet> commentList = (response.data as List<dynamic>)
            .map((commentJson) =>
                CommentFullGet.fromJson(commentJson as Map<String, dynamic>))
            .toList();

        return commentList;
      }
    }
    return null;
  }

  Future<List<CommentFullGet>?> getAllCommentReelPostShare(String idPost) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await postRepo.getAllCommentReelPostShare(token, idPost);
      if (response?.statusCode == 200) {
        List<CommentFullGet> commentList = (response.data as List<dynamic>)
            .map((commentJson) =>
                CommentFullGet.fromJson(commentJson as Map<String, dynamic>))
            .toList();

        return commentList;
      }
    }
    return null;
  }
}
