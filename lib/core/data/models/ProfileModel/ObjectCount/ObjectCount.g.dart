// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ObjectCount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ObjectCountImpl _$$ObjectCountImplFromJson(Map<String, dynamic> json) =>
    _$ObjectCountImpl(
      posts: (json['posts'] as num?)?.toInt(),
      followers: (json['followers'] as num?)?.toInt(),
      followings: (json['followings'] as num?)?.toInt(),
      postShares: (json['postShares'] as num?)?.toInt(),
      images: (json['images'] as num?)?.toInt(),
      RequestFollow: (json['RequestFollow'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ObjectCountImplToJson(_$ObjectCountImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'followers': instance.followers,
      'followings': instance.followings,
      'postShares': instance.postShares,
      'images': instance.images,
      'RequestFollow': instance.RequestFollow,
    };
