import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';

class PostNotifier extends StateNotifier<List<DataGet>> {
  PostNotifier() : super([]);

  void setPosts(List<DataGet> posts) {
    state = posts;
  }
 void addPost(DataGet newPost) {
    state = [newPost, ...state]; 
  }
  List<DataGet> getData() {
    return state;
  }
}

final postProvider = StateNotifierProvider<PostNotifier, List<DataGet>>((ref) {
  return PostNotifier();
});
