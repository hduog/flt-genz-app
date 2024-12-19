import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlogNotifier extends StateNotifier<List<BlogData>> {
  BlogNotifier() : super([]);

  void setBlogs(List<BlogData> blogs) {
    state = blogs;
  }

  void addListBlog(List<BlogData> newBlog) {
    state = [...state, ...newBlog];
  }

  List<BlogData> getData() {
    return state;
  }
}

final blogProvider = StateNotifierProvider<BlogNotifier, List<BlogData>>((ref) {
  return BlogNotifier();
});
