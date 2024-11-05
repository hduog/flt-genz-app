import 'package:flutter_application_1/core/data/models/PostModel/PostInfoGet/PostInfoGet.dart';
import 'package:flutter_application_1/core/reponsitories/post/post.dart';

class PostService {
  final postRepo = PostRepo();

  Future<PostInfoGet?> getValidPost(String token) async {
    final response = await postRepo.getPostValid(token);
    if (response?.statusCode == 200) {
      return PostInfoGet.fromJson(response.data);
    }
  }
}
