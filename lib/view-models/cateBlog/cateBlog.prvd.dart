import 'package:flutter_application_1/core/data/models/CateBlogs/CateBlogItem/CateBlogsItem/CateBlogItem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CateBlogNotifier extends StateNotifier<List<CateBlogItem>> {
  CateBlogNotifier() : super([]);

  void setCateBlogs(List<CateBlogItem> cateBlogs) {
    state = cateBlogs;
  }

  List<CateBlogItem> getData() {
    return state;
  }
}

final cateBlogProvider = StateNotifierProvider<CateBlogNotifier, List<CateBlogItem>>((ref) {
  return CateBlogNotifier();
});
