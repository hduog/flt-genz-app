import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageAIPost/MessageAIPost.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessage.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessageAIPost/RoomMessageAIPost.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class RoomMessageAIRepo {
  final apiService = ApiService();

  Future createARoomMessageAI(String token, RoomMessageAIPost data) async {
    return await apiService.post(
        ApiEndPointConstants.apiPostRoomMessageAI, data, token);
  }

  Future getAllRoomMessageAI(String token) async {
    return await apiService.get(
        ApiEndPointConstants.apiGetRoomMessageAI, token);
  }

  Future sendMessage(String token, MessagePost data) async {
    return await apiService.post(
        ApiEndPointConstants.apiSendMessage, token, data);
  }

  Future fetchMessages(String token, String idRoom) async {
    return await apiService.get(
        ApiEndPointConstants.apiGetMessageInRoom(idRoom), token);
  }

  Future getFollower(String token) async {
    return await apiService.get(
        ApiEndPointConstants.apiGetFollower, token);
  }
}
