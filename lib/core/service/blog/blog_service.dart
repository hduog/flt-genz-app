import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/BlogInfoGet/BlogDetail/BlogDetail.dart';
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

  Future<BlogDetail?> getBlogById(WidgetRef ref, String id) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String token = prefs.getString('access_token') ?? '';
      if (token.isEmpty) {
        print("Token không tồn tại hoặc rỗng.");
        return null;
      }
      final response = await blogRepo.getBlogById(token, id);
      if (response != null && response.statusCode == 200) {
        BlogDetail blogById = BlogDetail.fromJson(response.data);
        return blogById;
      } else {
        print("API trả về lỗi: ${response?.statusCode} - ${response?.data}");
      }
    } catch (e) {
      print("Lỗi khi gọi API getBlogById: $e");
    }

    return null;
  }
}
