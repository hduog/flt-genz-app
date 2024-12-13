// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProfileData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      objectCount:
          ObjectCount.fromJson(json['objectCount'] as Map<String, dynamic>),
      user: UserProfileData.fromJson(json['user'] as Map<String, dynamic>),
      follower: (json['follower'] as List<dynamic>?)
          ?.map((e) => FollowersData.fromJson(e as Map<String, dynamic>))
          .toList(),
      followings: (json['followings'] as List<dynamic>?)
          ?.map((e) => FollowingsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => ImageDataProfile.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      'objectCount': instance.objectCount,
      'user': instance.user,
      'follower': instance.follower,
      'followings': instance.followings,
      'image': instance.image,
    };
