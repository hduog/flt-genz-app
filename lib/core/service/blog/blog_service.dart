import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/BlogInfoGet/BlogInfoGet.dart';
import 'package:flutter_application_1/core/data/models/HotBlogModel/HotBlogItemForGet/HotBlogItemForGet.dart';
import 'package:flutter_application_1/core/reponsitories/blog/blog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BlogService {
  final blogRepo = BlogRepo();

  // Lấy token từ SharedPreferences
  Future<String> _getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('access_token') ?? '';
  }

  // Lấy các blog
  Future<List<BlogData>?> getBlogs(WidgetRef ref) async {
    final token = await _getToken();
    if (token.isNotEmpty) {
      final response = await blogRepo.getBlog(token);
      if (response != null &&
          response.statusCode == 200 &&
          response.data != null) {
        BlogInfoGet blogInfo = BlogInfoGet.fromJson(response.data);
        return blogInfo.data;
      }
    }
    return null;
  }

  // Lấy các blog hot
  Future<List<HotBlogItemForGet>?> getHotBlogs(WidgetRef ref) async {
    final token = await _getToken();
    if (token.isNotEmpty) {
      final response = await blogRepo.getHotBlog(token);
      if (response != null &&
          response.statusCode == 200 &&
          response.data != null) {
        List<dynamic> dataList =
            response.data; // Đây là danh sách các đối tượng
        List<HotBlogItemForGet> blogInfo =
            dataList.map((data) => HotBlogItemForGet.fromJson(data)).toList();
        return blogInfo;
      }
    }
    return null;
  }
}
