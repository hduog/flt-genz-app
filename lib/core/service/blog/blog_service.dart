import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/BlogInfoGet/BlogInfoGet.dart';
import 'package:flutter_application_1/core/reponsitories/blog/blog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BlogService {
  final blogRepo = BlogRepo();

  Future<List<BlogData>?> getBlogs(WidgetRef ref) async {
    // final token = ref.read(authProvider);
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token != null) {
      final response = await blogRepo.getBlog(token);
      if (response?.statusCode == 200) {
        BlogInfoGet blogInfo = BlogInfoGet.fromJson(response.data);
        return blogInfo.data;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
