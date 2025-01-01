// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProfileOtherAccountData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileOtherAccountDataImpl _$$ProfileOtherAccountDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileOtherAccountDataImpl(
      profileOtherAccount: ProfileData.fromJson(
          json['profileOtherAccount'] as Map<String, dynamic>),
      is_follow: IsFollowDataOtherAccount.fromJson(
          json['is_follow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileOtherAccountDataImplToJson(
        _$ProfileOtherAccountDataImpl instance) =>
    <String, dynamic>{
      'profileOtherAccount': instance.profileOtherAccount,
      'is_follow': instance.is_follow,
    };
