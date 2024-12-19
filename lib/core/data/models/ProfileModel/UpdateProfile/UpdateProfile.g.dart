// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UpdateProfile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfileImpl _$$UpdateProfileImplFromJson(Map<String, dynamic> json) =>
    _$UpdateProfileImpl(
      fullName: json['fullName'] as String,
      phone: json['phone'] as String,
      aboutMe: json['aboutMe'] as String?,
      nickName: json['nickName'] as String?,
      address: json['address'] as String?,
      favorite: (json['favorite'] as List<dynamic>?)
          ?.map((e) => FavoriteTagData.fromJson(e as Map<String, dynamic>))
          .toList(),
      avata: json['avata'] == null
          ? null
          : UpdateAvatarProfile.fromJson(json['avata'] as Map<String, dynamic>),
      imbannerage: json['banner'] == null
          ? null
          : UpdateBannerProfile.fromJson(
              json['banner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateProfileImplToJson(_$UpdateProfileImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'aboutMe': instance.aboutMe,
      'nickName': instance.nickName,
      'address': instance.address,
      'favorite': instance.favorite,
      'avata': instance.avata,
      'banner': instance.imbannerage,
    };
