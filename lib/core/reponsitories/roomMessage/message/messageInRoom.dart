import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageAIPost/MessageAIPost.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class MessageInRoomRepo {
  final apiService = ApiService();

  Future getAllMessageInRoom(String token, String idRoom) async {
    return await apiService.get(
        ApiEndPointConstants.apiGetMessageInRoom(idRoom), token);
  }

  Future sendMessageToRoomAI(String token, MessageAIPost data) async {
    return await apiService.post(
        ApiEndPointConstants.apiPostMessageToChatAIRoom, data, token);
  }

  Future fetchChatList(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetAllValidRoom, token);
  }
  
}
