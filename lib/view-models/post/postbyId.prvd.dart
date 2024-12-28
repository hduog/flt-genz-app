import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailNotifier extends StateNotifier<DataGet?> {
  PostDetailNotifier() : super(null);

  void setPostDetail(DataGet postById) {
    state = postById;
  }

  DataGet? getData() {
    return state;
  }
}

final postDetailProvider =
    StateNotifierProvider<PostDetailNotifier, DataGet?>((ref) {
  return PostDetailNotifier();
});
