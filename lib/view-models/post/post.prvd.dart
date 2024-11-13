import 'package:flutter_application_1/core/data/models/PostModel/PostInfoGet/PostInfoGet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostNotifier extends StateNotifier<PostInfoGet?> {
  PostNotifier() : super(null);

  void setPostValid(PostInfoGet data) {
    state = data;
  }

  PostInfoGet? getData() {
    return state;
  }

}

final postProvider = StateNotifierProvider<PostNotifier, PostInfoGet?>((ref) {
  return PostNotifier();
});
