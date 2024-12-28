// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserProfileData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileDataImpl _$$UserProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDataImpl(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      phone: json['phone'] as String,
      aboutMe: json['aboutMe'] as String,
      nickName: json['nickName'] as String,
      birth: json['birth'] as String,
      address: json['address'] as String,
      avata: json['avata'] as String,
      isValid: json['isValid'] as bool?,
      banner: json['banner'] as String?,
      email: json['email'] as String?,
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => RoleProfile.fromJson(e as Map<String, dynamic>))
          .toList(),
      favorite: (json['favorite'] as List<dynamic>?)
          ?.map((e) => FavoriteData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserProfileDataImplToJson(
        _$UserProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'aboutMe': instance.aboutMe,
      'nickName': instance.nickName,
      'birth': instance.birth,
      'address': instance.address,
      'avata': instance.avata,
      'isValid': instance.isValid,
      'banner': instance.banner,
      'email': instance.email,
      'roles': instance.roles,
      'favorite': instance.favorite,
    };
