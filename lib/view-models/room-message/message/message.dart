import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageGet/MessageGet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageInRoomNotifier extends StateNotifier<List<MessageGet>> {
  MessageInRoomNotifier() : super([]);

  void setListMessage(List<MessageGet> data) {
    state = data;
  }

  void addMoreMessage(MessageGet data) {
    state = [...state, data];
  }

  List<MessageGet> getListMessage() {
    return state;
  }
}

final messageInRoomProvider =
    StateNotifierProvider<MessageInRoomNotifier, List<MessageGet>>((ref) {
  return MessageInRoomNotifier();
});
