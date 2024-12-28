import 'package:freezed_annotation/freezed_annotation.dart';
part 'MessageAIPost.freezed.dart';
part 'MessageAIPost.g.dart';

@freezed
class MessageAIPost with _$MessageAIPost {
  factory MessageAIPost({
    @JsonKey(name: 'contentText') required String contentText,
    @JsonKey(name: 'roomId') required String roomId,
  }) = _MessageAIPost;
  factory MessageAIPost.fromJson(Map<String, Object?> json) =>
      _$MessageAIPostFromJson(json);
}
