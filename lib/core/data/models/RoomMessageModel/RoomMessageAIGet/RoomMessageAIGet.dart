import 'package:freezed_annotation/freezed_annotation.dart';
part 'RoomMessageAIGet.freezed.dart';
part 'RoomMessageAIGet.g.dart';

@freezed
class RoomMessageAIGet with _$RoomMessageAIGet {
  factory RoomMessageAIGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'created_at') required String created_at,
    @JsonKey(name: 'nameRoom') required String nameRoom,
  }) = _RoomMessageAIGet;
  factory RoomMessageAIGet.fromJson(Map<String, Object?> json) =>
      _$RoomMessageAIGetFromJson(json);
}
