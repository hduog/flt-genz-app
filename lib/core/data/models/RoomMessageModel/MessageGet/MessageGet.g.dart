// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MessageGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageGetImpl _$$MessageGetImplFromJson(Map<String, dynamic> json) =>
    _$MessageGetImpl(
      id: json['id'] as String,
      owner: json['owner'] == null
          ? null
          : OwnerRoomGet.fromJson(json['owner'] as Map<String, dynamic>),
      ownerId: json['ownerId'] as String?,
      roomId: json['roomId'] as String?,
      created_at: json['created_at'] as String?,
      contentText: json['contentText'] as String?,
    );

Map<String, dynamic> _$$MessageGetImplToJson(_$MessageGetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'ownerId': instance.ownerId,
      'roomId': instance.roomId,
      'created_at': instance.created_at,
      'contentText': instance.contentText,
    };
