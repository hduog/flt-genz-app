// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IsFollowDataOtherAccount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IsFollowDataOtherAccountImpl _$$IsFollowDataOtherAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$IsFollowDataOtherAccountImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      followShipId: json['followShipId'] as String?,
      followShipIdOfFollowing: json['followShipIdOfFollowing'] as String?,
      followShipIdOfFollower: json['followShipIdOfFollower'] as String?,
    );

Map<String, dynamic> _$$IsFollowDataOtherAccountImplToJson(
        _$IsFollowDataOtherAccountImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'followShipId': instance.followShipId,
      'followShipIdOfFollowing': instance.followShipIdOfFollowing,
      'followShipIdOfFollower': instance.followShipIdOfFollower,
    };
