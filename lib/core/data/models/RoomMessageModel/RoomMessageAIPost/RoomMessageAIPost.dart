import 'package:freezed_annotation/freezed_annotation.dart';
part 'RoomMessageAIPost.freezed.dart';
part 'RoomMessageAIPost.g.dart';

@freezed
class RoomMessageAIPost with _$RoomMessageAIPost {
  factory RoomMessageAIPost({
    @JsonKey(name: 'accountInRoom') required List<String> accountInRoom,
    @JsonKey(name: 'name') required String name,
  }) = _RoomMessageAIPost;
  factory RoomMessageAIPost.fromJson(Map<String, Object?> json) =>
      _$RoomMessageAIPostFromJson(json);
}
