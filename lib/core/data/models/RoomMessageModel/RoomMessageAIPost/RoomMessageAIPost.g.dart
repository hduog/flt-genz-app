// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RoomMessageAIPost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomMessageAIPostImpl _$$RoomMessageAIPostImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomMessageAIPostImpl(
      accountInRoom: (json['accountInRoom'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$RoomMessageAIPostImplToJson(
        _$RoomMessageAIPostImpl instance) =>
    <String, dynamic>{
      'accountInRoom': instance.accountInRoom,
      'name': instance.name,
    };
