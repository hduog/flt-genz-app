
import 'package:flutter_application_1/core/data/models/BlogModel/BlogInfoGet/BlogDetail/BlogDetail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlogDetailNotifier extends StateNotifier<BlogDetail?> {
  BlogDetailNotifier() : super(null);

  void setBlogDetail(BlogDetail blogData) {
    state = blogData;
  }

  BlogDetail? getData() {
    return state;
  }
}

final blogDetailProvider = StateNotifierProvider<BlogDetailNotifier, BlogDetail?>((ref) {
  return BlogDetailNotifier();
});
