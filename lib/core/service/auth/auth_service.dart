import 'package:flutter_application_1/core/data/models/LoginModel/LoginPost.dart';
import 'package:flutter_application_1/core/data/models/LoginModel/RegistrationPost.dart';
import 'package:flutter_application_1/core/data/models/UserModel/BasicInfoGet/BasicInfoGet.dart';
import 'package:flutter_application_1/core/reponsitories/auth/auth.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final authRepo = AuthRepo();

  Future<bool> login(LoginPostModel account, WidgetRef ref) async {
    final response = await authRepo.login(account);
    if (response?.statusCode == 201) {
      final data = response.data;
      final token = data['access_token'];
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', token.toString());
      final userInfo = await getBasicInfo(token);
      if (userInfo != null) {
        ref.read(userProvider.notifier).setInfoByToken(userInfo);
      }
      return true;
    } else {
      return false;
    }
  }

  Future<bool> registration(RegistrationPost account) async {
    final response = await authRepo.registration(account);
    if (response?.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<BasicInfoGet?> getBasicInfo(String token) async {
    final response = await authRepo.getBasicInfoByToken(token);
    if (response?.statusCode == 200) {
      return BasicInfoGet.fromJson(response.data);
    } else {
      return null;
    }
  }
  Future<BasicInfoGet?> infoUser(WidgetRef ref) async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('access_token');

  if (token != null) {
    final userInfo = await getBasicInfo(token);
    if (userInfo != null) {
      ref.read(userProvider.notifier).setInfoByToken(userInfo);
    }
  }
}

}
