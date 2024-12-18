
import 'package:flutter_application_1/core/data/models/FavoriteTagData/FavoriteTagData.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/FavoriteData/FavoriteData.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/UpdateProfile/UpdateAvatarProfile/UpdateAvatarProfile.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/UpdateProfile/UpdateBannerProfile/UpdateBannerProfile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'UpdateProfile.freezed.dart';
part 'UpdateProfile.g.dart';

@freezed
class UpdateProfile with _$UpdateProfile {
  factory UpdateProfile({
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'phone') required String  phone,
    @JsonKey(name: 'aboutMe') String?  aboutMe,
    @JsonKey(name: 'nickName') String? nickName,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'favorite') List<FavoriteTagData>? favorite,
    @JsonKey(name: 'avata') UpdateAvatarProfile? avata,
    @JsonKey(name: 'banner') UpdateBannerProfile? imbannerage,
  }) = _UpdateProfile;
  factory UpdateProfile.fromJson(Map<String, Object?> json) =>
      _$UpdateProfileFromJson(json);
}
