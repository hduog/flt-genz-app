import 'package:flutter_application_1/core/data/models/UserModel/BasicInfoGet/BasicInfoGet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends StateNotifier<BasicInfoGet?> {
  UserNotifier() : super(null);

  void setInfoByToken(BasicInfoGet data) {
    state = data;
  }

  void logout() {
    state = null;
  }

  BasicInfoGet? getData() {
    return state;
  }
  
}

final userProvider = StateNotifierProvider<UserNotifier, BasicInfoGet?>((ref) {
  return UserNotifier();
});
