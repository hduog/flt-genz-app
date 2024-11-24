// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TypeNotification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TypeNotificationImpl _$$TypeNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$TypeNotificationImpl(
      id: json['id'] as String,
      typeName: json['typeName'] as String,
      description: json['description'] as String?,
      thumbnailNoti: json['thumbnailNoti'] as String?,
    );

Map<String, dynamic> _$$TypeNotificationImplToJson(
        _$TypeNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'typeName': instance.typeName,
      'description': instance.description,
      'thumbnailNoti': instance.thumbnailNoti,
    };
