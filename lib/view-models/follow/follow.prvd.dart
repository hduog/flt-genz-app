import 'package:flutter_application_1/core/data/models/ProfileModel/FollowersData/FollowersData.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FollowNotifier extends StateNotifier<List<FollowersData>> {
  FollowNotifier() : super([]);

  void setFollower(List<FollowersData> follower) {
    state = follower;
  }

  List<FollowersData> getFollower() {
    return state;
  }
}

final followProvider = StateNotifierProvider<FollowNotifier, List<FollowersData>>((ref) {
  return FollowNotifier();
});
