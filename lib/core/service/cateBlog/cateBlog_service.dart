import 'package:flutter_application_1/core/data/models/CateBlogs/CateBlogItem/CateBlogsItem/CateBlogItem.dart';
import 'package:flutter_application_1/core/reponsitories/cateBlog/cateBlog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/core/data/models/CateBlogs/CateBlogForGet/CateBlogForGet.dart';

class CateBlogService {
  final cateBlogRepo = CateBlogRepo();

  Future<List<CateBlogItem>?> getCateBlogs(WidgetRef ref) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String token = prefs.getString('access_token') ?? '';

      if (token.isNotEmpty) {
        final response = await cateBlogRepo.getCateBlog(token);
        if (response != null && response.statusCode == 200) {
          // Kiểm tra và giải quyết dữ liệu trả về từ API
          List<dynamic> data = response.data; // Dữ liệu trả về là danh sách
          return data.map((item) => CateBlogItem.fromJson(item)).toList();
        } else {
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching cateBlogs: $e');
      return null;
    }
  }
}