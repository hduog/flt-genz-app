import 'package:flutter_application_1/core/data/models/PostModel/PostInfoGet/PostInfoGet.dart';
import 'package:flutter_application_1/core/reponsitories/post/post.dart';

class PostService {
  final postRepo = PostRepo();

  Future<PostInfoGet?> getValidPost(String token) async {
    try {
      // Nếu API trả về thành công, giải mã JSON
      final response = await postRepo.getPostValid(token);
      
      // Check if the response status code is 200 (OK)
      if (response?.statusCode == 200) {
        // If successful, parse and return the post
        return PostInfoGet.fromJson(response.data);
      } else {
        // Handle non-200 responses
        print('Error: Received status code ${response?.statusCode}');
        return null;
      }
    } catch (e) {
      // Handle any errors that occur during the request (e.g., network issues)
      print('Error fetching post: $e');
      return null;
    }
  }
}
