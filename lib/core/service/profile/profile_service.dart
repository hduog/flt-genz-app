import 'dart:io';
import 'package:flutter_application_1/core/data/models/FileModel/ImageForCreate/ImageForCreate.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileData/ProfileData.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileUpdateRespone/ProfileUpdateRespone.dart';
import 'package:flutter_application_1/core/reponsitories/profile/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileService {
  final profileRepo = ProfileRepo();
  Future<ProfileData> getMyProfile() async {
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

  Future<ProfileUpdateRespone> patchMyProfile(
      Map<String, dynamic> updatedData) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';

    if (token.isEmpty) {
      throw Exception('Token is missing or empty');
    }
    try {
      final response = await profileRepo.patchMyProfile(token, updatedData);

      if (response?.statusCode == 200) {
        return ProfileUpdateRespone.fromJson(response.data);
      } else {
        print(
            'API error: ${response?.statusCode} - ${response?.statusMessage}');
        throw Exception(
            'Failed to update profile: ${response?.statusCode} - ${response?.statusMessage}');
      }
    } catch (e) {
      print('Error during profile update: $e');
      throw Exception('Error updating profile: $e');
    }
  }

  Future<String?> uploadAvatarImage(File image) async {
    try {
      final token =
          (await SharedPreferences.getInstance()).getString('access_token');
      if (token == null) {
        print('No token found.');
        return null;
      }

      final response = await profileRepo.uploadAvatar(
        ImageForCreate(filePath: image.path),
        token,
      );

      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return response.data['filename'];
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<String?> uploadBannerImage(File image) async {
    try {
      final token =
          (await SharedPreferences.getInstance()).getString('access_token');
      if (token == null) {
        print('No token found.');
        return null;
      }

      final response = await profileRepo.uploadBanner(
        ImageForCreate(filePath: image.path),
        token,
      );

      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return response.data['filename'];
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
