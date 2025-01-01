// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FollowForResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FollowForResponseImpl _$$FollowForResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowForResponseImpl(
      id: json['id'] as String,
      senderId: json['senderId'] as String,
      sender: SenderResponse.fromJson(json['sender'] as Map<String, dynamic>),
      reciver:
          ReciverResponse.fromJson(json['reciver'] as Map<String, dynamic>),
      reciverId: json['reciverId'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$$FollowForResponseImplToJson(
        _$FollowForResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'sender': instance.sender,
      'reciver': instance.reciver,
      'reciverId': instance.reciverId,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
