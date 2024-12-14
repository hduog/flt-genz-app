import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/BlogInfoGet/BlogDetail/BlogDetail.dart';
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

  // Lấy tất cả các blog
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

  // Lấy các blog theo danh mục
  Future<List<BlogData>?> getBlogsByCategory(String cateId, WidgetRef ref) async {
  final token = await _getToken();
  if (token.isNotEmpty) {
    try {
      final response = await blogRepo.getBlogsByCategory(token, cateId);
      if (response != null &&
          response.statusCode == 200 &&
          response.data != null) {
        BlogInfoGet blogInfo = BlogInfoGet.fromJson(response.data);
        return blogInfo.data;
      } else {
        print("API trả về lỗi: ${response?.statusCode} - ${response?.data}");
      }
    } catch (e) {
      print("Lỗi khi gọi API getBlogsByCategory: $e");
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

  // Lấy blog chi tiết theo ID
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
