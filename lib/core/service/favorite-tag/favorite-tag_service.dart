import 'package:flutter_application_1/core/data/models/FavoriteTagData/FavoriteTagData.dart';
import 'package:flutter_application_1/core/reponsitories/favorite-tag/favorite-tag.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteTagService {
  final favoriteTagRepo = FavoriteTagRepo();
  Future<List<FavoriteTagData>?> getAllFavoriteTags() async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await favoriteTagRepo.getFavoriteTag(token);
      if (response != null && response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => FavoriteTagData.fromJson(item)).toList();
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
