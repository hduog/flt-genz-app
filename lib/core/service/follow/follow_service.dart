import 'package:flutter_application_1/core/data/models/FollowModel/CheckRequestFollow/CheckRequestFollow.dart';
import 'package:flutter_application_1/core/data/models/FollowModel/FollowForCreate/FollowForCreate.dart';
import 'package:flutter_application_1/core/reponsitories/follow/follow.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FollowService {
  final followRepo = FollowRepo();

  Future<bool> sendRequestFollows(FollowForCreate data) async {
  final prefs = await SharedPreferences.getInstance();
  final String token = prefs.getString('access_token') ?? '';
  if (token.isNotEmpty) {
    try {
      print('Sending follow request with data: ${data.toJson()}');
      final response = await followRepo.sendRequestFollow(data, token);
      print('Follow request response: ${response?.statusCode}, ${response?.data}');
      if (response != null && response.statusCode == 201) {
        return true;
      } else {
        print('Error: ${response?.data}');
        return false;
      }
    } catch (e) {
      print('Error: $e');
      return false;
    }
  }
  return false;
}


  Future<CheckRequestFollow> checkStatusFollows(String reciverId) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      try {
        final response = await followRepo.checkStatusFollow(reciverId, token);
        if (response == null) {
          return CheckRequestFollow(id: '', status: 0);
        }
        if (response.statusCode == 404) {
          return CheckRequestFollow(id: '', status: 0);
        }
        final checkRequestFollow = CheckRequestFollow.fromJson(response.data);
        return checkRequestFollow;
      } catch (e) {
        return CheckRequestFollow(id: '', status: 0);
      }
    }
    return CheckRequestFollow(id: '', status: 0);
  }

   Future<bool> unFollows(String followId) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      try {
        final response = await followRepo.unFollow(followId, token);
        if (response == null) {
          return false;
        }
        return response.statusCode == 200 || response.statusCode == 204;
      } catch (e) {
        return false;
      }
    }
    return false;
  }
  Future<bool> unRequestFollows(String followId) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      try {
        final response = await followRepo.unRequestFollow(followId, token);
        if (response == null) {
          return false;
        }
        return response.statusCode == 200 || response.statusCode == 204;
      } catch (e) {
        return false;
      }
    }
    return false;
  }
}
