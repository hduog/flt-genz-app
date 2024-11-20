import 'package:flutter_application_1/core/data/models/PostModel/AccountComment/AccountComment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'CommentForGet.freezed.dart';
part 'CommentForGet.g.dart';

@freezed
class CommentForGet with _$CommentForGet {
  factory CommentForGet({
    @JsonKey(name: 'account') required AccountComment account,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'created_at') String? created_at,
  }) = _CommentForGet;
  factory CommentForGet.fromJson(Map<String, Object?> json) =>
      _$CommentForGetFromJson(json);
}
