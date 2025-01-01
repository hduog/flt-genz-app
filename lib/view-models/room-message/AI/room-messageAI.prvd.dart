import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessageAIGet/RoomMessageAIGet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoomMessageAINotifier extends StateNotifier<List<RoomMessageAIGet>> {
  RoomMessageAINotifier() : super([]);

  void setListChatAI(List<RoomMessageAIGet> hotBlogs) {
    state = hotBlogs;
  }

  List<RoomMessageAIGet> getListChatAI() {
    return state;
  }
}

final roomMessageAIProvider =
    StateNotifierProvider<RoomMessageAINotifier, List<RoomMessageAIGet>>((ref) {
  return RoomMessageAINotifier();
});
