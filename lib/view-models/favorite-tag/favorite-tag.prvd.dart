import 'package:flutter_application_1/core/data/models/FavoriteTagData/FavoriteTagData.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteTagNotifier extends StateNotifier<List<FavoriteTagData>> {
  FavoriteTagNotifier() : super([]);

  void setFavoriteTag(List<FavoriteTagData> data) {
    state = data;
  }

  List<FavoriteTagData> getFavoriteTag() {
    return state;
  }
}

final favoriteTagProvider = StateNotifierProvider<FavoriteTagNotifier, List<FavoriteTagData>>((ref) {
  return FavoriteTagNotifier();
});
