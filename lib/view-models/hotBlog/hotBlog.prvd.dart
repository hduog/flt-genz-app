import 'package:flutter_application_1/core/data/models/HotBlogModel/HotBlogItemForGet/HotBlogItemForGet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HotBlogNotifier extends StateNotifier<List<HotBlogItemForGet>> {
  HotBlogNotifier() : super([]);

  void setHotBlogs(List<HotBlogItemForGet> hotBlogs) {
    state = hotBlogs;
  }

  List<HotBlogItemForGet> getHotBlogs() {
    return state;
  }
}

final hotBlogProvider = StateNotifierProvider<HotBlogNotifier, List<HotBlogItemForGet>>((ref) {
  return HotBlogNotifier();
});
