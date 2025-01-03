// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RoomMessageForGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomMessageForGetImpl _$$RoomMessageForGetImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomMessageForGetImpl(
      id: json['id'] as String,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      accountInRoom: (json['accountInRoom'] as List<dynamic>)
          .map((e) => BasicInfoGet.fromJson(e as Map<String, dynamic>))
          .toList(),
      nameRoom: json['nameRoom'] as String?,
      lastMessage: json['lastMessage'] as String?,
      lastMessageTime: json['lastMessageTime'] as String?,
      avatar: json['avatar'] as String?,
      isSeen: json['isSeen'] as bool?,
      idLastSendingUser: json['idLastSendingUser'] as String?,
    );

Map<String, dynamic> _$$RoomMessageForGetImplToJson(
        _$RoomMessageForGetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'accountInRoom': instance.accountInRoom,
      'nameRoom': instance.nameRoom,
      'lastMessage': instance.lastMessage,
      'lastMessageTime': instance.lastMessageTime,
      'avatar': instance.avatar,
      'isSeen': instance.isSeen,
      'idLastSendingUser': instance.idLastSendingUser,
    };
