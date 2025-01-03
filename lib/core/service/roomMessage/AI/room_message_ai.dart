import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/FollowersData/FollowersData.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageAIPost/MessageAIPost.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/MessageGet/MessageGet.dart';
import 'package:flutter_application_1/core/data/models/RoomMessageModel/RoomMessage.dart';
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

  Future<List<FollowersData>?> getFollower() async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';

    if (token.isNotEmpty) {
      final response = await roomMessageAIRepo.getFollower(token);

      if (response != null && response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((item) => FollowersData.fromJson(item)).toList();
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

  Future<List<MessageGet>?> fetchMessages(String idRoom) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String token = prefs.getString('access_token') ?? '';
      if (token.isEmpty) {
        throw Exception('Access token is missing.');
      }
      final response = await roomMessageAIRepo.fetchMessages(token, idRoom);
      if (response.statusCode == 200) {
        // Parse JSON thành danh sách RoomMessageAIGet
        final List<dynamic> jsonList = response.data;
        return jsonList.map((json) => MessageGet.fromJson(json)).toList();
      } else {
        throw Exception(
            'Failed to fetch messages. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // In lỗi ra console hoặc log
      print('Error fetching messages: $e');
      return [];
    }
  }

  Future<MessageForGet?> sendMessage(MessagePost data) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await roomMessageAIRepo.sendMessage(token, data);
      if (response.statusCode == 201) {
        return MessageForGet.fromJson(response.data);
      }
    }
  }
}
