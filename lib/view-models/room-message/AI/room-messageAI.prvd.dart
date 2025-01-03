import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessageAIGet/RoomMessageAIGet.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessageForGet/RoomMessageForGet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoomMessageState {
  final List<RoomMessageAIGet> chatAI;
  final List<RoomMessageForGet> chatRoom;

  RoomMessageState({required this.chatAI, required this.chatRoom});

  factory RoomMessageState.initial() {
    return RoomMessageState(chatAI: [], chatRoom: []);
  }
}
class RoomMessageAINotifier extends StateNotifier<RoomMessageState> {
  RoomMessageAINotifier() : super(RoomMessageState.initial());

  void setListChatAI(List<RoomMessageAIGet> chatAI) {
    state = RoomMessageState(chatAI: chatAI, chatRoom: state.chatRoom);
  }

  void setListChatRoom(List<RoomMessageForGet> chatRoom) {
    state = RoomMessageState(chatAI: state.chatAI, chatRoom: chatRoom);
  }

  List<RoomMessageAIGet> getListChatAI() {
    return state.chatAI;
  }

  List<RoomMessageForGet> getListChatRoom() {
    return state.chatRoom;
  }

  void setListMessage(List<RoomMessageForGet> data) {
    state = RoomMessageState(chatAI: state.chatAI, chatRoom: state.chatRoom);
  }
}

final roomMessageAIProvider =
    StateNotifierProvider<RoomMessageAINotifier, RoomMessageState>((ref) {
  return RoomMessageAINotifier();
});
