import 'package:flutter_application_1/core/data/models/RoomMessageModel/OwnerRoom/OwnerRoomGet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'MessageGet.freezed.dart';
part 'MessageGet.g.dart';

@freezed
class MessageGet with _$MessageGet {
  factory MessageGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'owner') OwnerRoomGet? owner,
    @JsonKey(name: 'ownerId') String? ownerId,
    @JsonKey(name: 'roomId') String? roomId,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'contentText') String? contentText,
  }) = _MessageGet;
  factory MessageGet.fromJson(Map<String, Object?> json) =>
      _$MessageGetFromJson(json);
}
