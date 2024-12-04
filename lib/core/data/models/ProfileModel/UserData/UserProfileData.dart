import 'package:flutter_application_1/core/data/models/ProfileModel/FavoriteData/FavoriteData.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/RoleProfile/RoleProfile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserProfileData.freezed.dart';
part 'UserProfileData.g.dart';

@freezed
class UserProfileData with _$UserProfileData {
  factory UserProfileData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'aboutMe') required String aboutMe,
    @JsonKey(name: 'nickName') required String nickName,
    @JsonKey(name: 'birth') required String birth,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'avata') required String avata,
    @JsonKey(name: 'isValid') bool? isValid,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'roles') List<RoleProfile>? roles,
    @JsonKey(name: 'favorite') List<FavoriteData>? favorite,
  }) = _UserProfileData;
  factory UserProfileData.fromJson(Map<String, Object?> json) =>
      _$UserProfileDataFromJson(json);
}
