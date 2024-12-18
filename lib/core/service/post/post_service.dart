import 'dart:io';

import 'package:flutter_application_1/core/data/models/CommentFullGet/CommentFullGet.dart';
import 'package:flutter_application_1/core/data/models/FileModel/ImageForCreatePost/ImageForCreatePost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CommentReelPost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CreatePostShare.dart';
import 'package:flutter_application_1/core/data/models/PostModel/PostForCreate/PostForCreate.dart';
import 'package:flutter_application_1/core/data/models/PostModel/UpdateReactionReelPost.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/PostInfoGet/PostInfoGet.dart';
import 'package:flutter_application_1/core/reponsitories/post/post.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PostService {
  final postRepo = PostRepo();

  Future<List<DataGet>?> getPosts(String? query) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await postRepo.getPostValid(token, query);
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
      final response =
          await postRepo.updateStatusReactionPostShare(token, data);
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

  Future<List<CommentFullGet>?> getAllCommentReelPostShare(
      String idPost) async {
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

  Future<String?> uploadImage(File image) async {
    try {
      final token =
          (await SharedPreferences.getInstance()).getString('access_token');
      if (token == null) {
        print('No token found.');
        return null;
      }

      final response = await postRepo.uploadPostImage(
        ImageForCreatePost(filePath: image.path),
        token,
      );

      if (response?.statusCode == 200 || response?.statusCode == 201) {
        final imageResponse = response.data['filename'];

        return imageResponse;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<bool> createPost(
      PostForCreate body, List<File>? images, WidgetRef ref) async {
    try {
      final token =
          (await SharedPreferences.getInstance()).getString('access_token');
      if (token == null || token.isEmpty) {
        return false;
      }

      final imageUrls = await Future.wait(
        images?.map(uploadImage) ?? [],
      ).then((urls) => urls.whereType<String>().toList());

      if (images != null && imageUrls.length != images.length) {
        return false;
      }

      final updatedPost = body.copyWith(imagePaths: imageUrls);
      final response = await postRepo.createPost(updatedPost, token);

      if (response?.statusCode == 200 || response?.statusCode == 201) {
        final responseData = response.data;
        if (responseData is Map<String, dynamic>) {
          try {
            final newPost = DataGet.fromJson(responseData);
            ref.read(postProvider.notifier).addPost(newPost);
            return true;
          } catch (e) {}
        } else {}
      } else {}

      return false;
    } catch (e) {
      print("Error creating post: $e");
      return false;
    }
  }

  Future<List<DataGet>?> getMyPosts(WidgetRef ref) async {
    // final token = ref.read(authProvider);
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token != null) {
      final response = await postRepo.getPostMySelf(token);
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

  Future<List<DataGet>?> createPostShare(CreatePostShare data) async {
    
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await postRepo.createPostShare(data, token);
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
}
