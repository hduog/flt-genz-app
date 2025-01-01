import 'package:flutter_application_1/core/data/models/UserModel/BasicInfoGet/BasicInfoGet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'RoomMessageForGet.freezed.dart';
part 'RoomMessageForGet.g.dart';

@freezed
class RoomMessageForGet with _$RoomMessageForGet {
  factory RoomMessageForGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'updated_at') String? updated_at,
    @JsonKey(name: 'accountInRoom') required List<BasicInfoGet> accountInRoom,
    @JsonKey(name: 'nameRoom') String? nameRoom,
    @JsonKey(name: 'lastMessage') String? lastMessage,
    @JsonKey(name: 'lastMessageTime') String? lastMessageTime, 
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'isSeen') bool? isSeen,
    @JsonKey(name: 'idLastSendingUser') String? idLastSendingUser,
  }) = _RoomMessageForGet;

  factory RoomMessageForGet.fromJson(Map<String, dynamic> json) =>
      _$RoomMessageForGetFromJson(json);
}
