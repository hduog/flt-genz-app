import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileOtherAccountData/ProfileOtherAccountData.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileOtherAccountNotifier extends StateNotifier<ProfileOtherAccountData?> {
  ProfileOtherAccountNotifier() : super(null);

  void setOtherProfile(ProfileOtherAccountData profileOther) {
    state = profileOther;
  }

  ProfileOtherAccountData? getData() {
    return state;
  }
}

final profileOtherProvider = StateNotifierProvider.autoDispose<ProfileOtherAccountNotifier, ProfileOtherAccountData?>((ref) {
  return ProfileOtherAccountNotifier();
});
