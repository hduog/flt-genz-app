import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileData/ProfileData.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileNotifier extends StateNotifier<ProfileData?> {
  ProfileNotifier() : super(null);

  void setMyProfile(ProfileData profile) {
    state = profile;
  }


  ProfileData? getData() {
    return state;
  }
}

final profileProvider = StateNotifierProvider.autoDispose<ProfileNotifier, ProfileData?>((ref) {
  return ProfileNotifier();
});
