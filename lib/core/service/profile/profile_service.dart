import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileData/ProfileData.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileOtherAccountData/ProfileOtherAccountData.dart';
import 'package:flutter_application_1/core/reponsitories/profile/profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileService {
  final profileRepo = ProfileRepo();
  Future<ProfileData> getMyProfile(WidgetRef ref) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';

    if (token.isNotEmpty) {
      final response = await profileRepo.getMyAccountProfile(token);

      if (response?.statusCode == 200) {
        return ProfileData.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch profile: ${response?.statusMessage}');
      }
    } else {
      throw Exception('Token is missing or empty');
    }
  }

  Future<ProfileData> patchMyProfile(
    String userId,
    Map<String, dynamic> updatedData,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';

    if (token.isEmpty) {
      throw Exception('Token is missing or empty');
    }

    try {
      final response =
          await profileRepo.patchMyProfile(token, userId, updatedData);

      if (response?.statusCode == 200) {
        return ProfileData.fromJson(response.data);
      } else {
        // Log response details for debugging
        print(
            'API error: ${response?.statusCode} - ${response?.statusMessage}');
        throw Exception('Failed to update profile: ${response?.statusMessage}');
      }
    } catch (e) {
      print('Error during profile update: $e');
      throw Exception('Error updating profile: $e');
    }
  }

  Future<ProfileOtherAccountData?> getProfileOtherAccount(
      WidgetRef ref, String id) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';

    if (token.isNotEmpty) {
      final response = await profileRepo.getProfileOtherAccount(token, id);

      if (response?.statusCode == 200) {
        ProfileOtherAccountData accountId =
            ProfileOtherAccountData.fromJson(response.data);
            return accountId;
      }
    }
    return null;
  }
}
