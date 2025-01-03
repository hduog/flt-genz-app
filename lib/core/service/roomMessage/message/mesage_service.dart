import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageAIPost/MessageAIPost.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageGet/MessageGet.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessageForGet/RoomMessageForGet.dart';
import 'package:flutter_application_1/core/reponsitories/roomMessage/message/messageInRoom.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MessageInRoomService {
  final messageRepo = MessageInRoomRepo();

  Future<List<MessageGet>?> getAllRoomMessageAI(String idRoom) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';

    if (token.isNotEmpty) {
      final response = await messageRepo.getAllMessageInRoom(token, idRoom);

      if (response != null && response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => MessageGet.fromJson(item)).toList();
      }
    } else {
      throw Exception('Token is missing or empty');
    }
    return null;
  }

  Future<MessageGet?> sendMessageToAI(MessageAIPost data) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await messageRepo.sendMessageToRoomAI(token, data);
      print(response);
      if (response?.statusCode == 201) {
        return MessageGet.fromJson(response.data);
      }
    }
  }

  Future<List<RoomMessageForGet>?> fetchChatList() async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';

    if (token.isNotEmpty) {
      final response = await messageRepo.fetchChatList(token);

      if (response != null && response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => RoomMessageForGet.fromJson(item)).toList();
      }
    } else {
      throw Exception('Token is missing or empty');
    }
    return null;
  }
}
