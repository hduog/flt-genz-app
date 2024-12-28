
import 'package:flutter_application_1/core/data/models/ProfileModel/FollowersData/FollowersData.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/FollowingsData/FollowingsData.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ImageDataProfile/ImageDataProfile.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ObjectCount/ObjectCount.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/UserData/UserProfileData.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ProfileData.freezed.dart';
part 'ProfileData.g.dart';

@freezed
class ProfileData with _$ProfileData {
  factory ProfileData({
    @JsonKey(name: 'objectCount') required ObjectCount objectCount,
    @JsonKey(name: 'user') required UserProfileData user,
    @JsonKey(name: 'follower') List<FollowersData>? follower,
    @JsonKey(name: 'followings') List<FollowingsData>? followings,
    @JsonKey(name: 'image') List<ImageDataProfile>? image,
  }) = _ProfileData;
  factory ProfileData.fromJson(Map<String, Object?> json) =>
      _$ProfileDataFromJson(json);
}
