import 'package:flutter_application_1/core/data/models/PostModel/AccountComment/AccountComment.dart';
import 'package:flutter_application_1/core/data/models/PostModel/AccountCommentFullGet/AccountCommentFullGet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'CommentReplyGet.freezed.dart';
part 'CommentReplyGet.g.dart';

@freezed
class CommentReplyGet with _$CommentReplyGet {
  factory CommentReplyGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'contentCmt') required String contentCmt,
    @JsonKey(name: 'created_at') required String created_at,
    @JsonKey(name: 'account') required AccountCommentFullGet account,
    @JsonKey(name: 'accountMention')
    required AccountCommentFullGet accountMention,
  }) = _CommentReplyGet;
  factory CommentReplyGet.fromJson(Map<String, Object?> json) =>
      _$CommentReplyGetFromJson(json);
}
