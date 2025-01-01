import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessageAIGet/RoomMessageAIGet.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessageAIPost/RoomMessageAIPost.dart';
import 'package:flutter_application_1/core/reponsitories/roomMessage/AI/roomMessageAI.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoomMessageAIService {
  final roomMessageAIRepo = RoomMessageAIRepo();

  Future<List<RoomMessageAIGet>?> getAllRoomMessageAI() async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';

    if (token.isNotEmpty) {
      final response = await roomMessageAIRepo.getAllRoomMessageAI(token);

      if (response != null && response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => RoomMessageAIGet.fromJson(item)).toList();
      }
    } else {
      throw Exception('Token is missing or empty');
    }
    return null;
  }

  Future<RoomMessageAIGet?> createRoomMessageAI(RoomMessageAIPost data) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response =
          await roomMessageAIRepo.createARoomMessageAI(token, data);
      if (response?.statusCode == 201) {
        return RoomMessageAIGet.fromJson(response.data);
      }
    }
  }
}
