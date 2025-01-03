
import 'package:flutter_application_1/core/data/models/ProfileModel/IsFollowDataOtherAccount/IsFollowDataOtherAccount.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileData/ProfileData.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ProfileOtherAccountData.freezed.dart';
part 'ProfileOtherAccountData.g.dart';

@freezed
class ProfileOtherAccountData with _$ProfileOtherAccountData {
  factory ProfileOtherAccountData({
    @JsonKey(name: 'profileOtherAccount') required ProfileData profileOtherAccount,
    @JsonKey(name: 'is_follow') required IsFollowDataOtherAccount is_follow,
  }) = _ProfileOtherAccountData;
  factory ProfileOtherAccountData.fromJson(Map<String, Object?> json) =>
      _$ProfileOtherAccountDataFromJson(json);
}
