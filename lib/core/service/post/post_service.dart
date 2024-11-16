import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/PostInfoGet/PostInfoGet.dart';
import 'package:flutter_application_1/core/reponsitories/post/post.dart';
import 'package:flutter_application_1/view-models/auth/auth.prvd.dart';

class PostService {
  final postRepo = PostRepo();

  Future<List<DataGet>?> getPosts(WidgetRef ref) async {
    final token = ref.read(authProvider);
    if (token != null) {
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
}
