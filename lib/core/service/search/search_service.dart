import 'package:flutter_application_1/core/data/models/Search/SearchModel/SearchModel.dart';
import 'package:flutter_application_1/core/reponsitories/Search/Search.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchService {
  final searchRepo = SearchRepo();

  Future<List<SearchUser>> searchUser(String? keyword) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ??
        ''; 
    if (token.isEmpty) {
      throw ApiError(message: 'Token không hợp lệ');
    }
    if (keyword == null || keyword.isEmpty) {
      throw ApiError(message: 'Từ khóa không hợp lệ');
    }
    try {
      final response = await searchRepo.searchUser(keyword, token);
      if (response?.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((e) => SearchUser.fromJson(e)).toList();
      } else {
        throw ApiError(message: 'Không tìm thấy kết quả');
      }
    } catch (e) {
      throw ApiError(message: 'Lỗi từ API: $e');
    }
  }

  Future<List<SearchPosts>> searchPosts(String? keyword) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ??
        ''; 
    if (token.isEmpty) {
      throw ApiError(message: 'Token không hợp lệ');
    }
    if (keyword == null || keyword.isEmpty) {
      throw ApiError(message: 'Từ khóa không hợp lệ');
    }
    try {
      final response = await searchRepo.searchPosts(keyword, token);
      if (response?.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((e) => SearchPosts.fromJson(e)).toList();
      } else {
        throw ApiError(message: 'Không tìm thấy kết quả');
      }
    } catch (e) {
      throw ApiError(message: 'Lỗi từ API: $e');
    }
  }
}
