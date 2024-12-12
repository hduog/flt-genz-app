import 'package:flutter_application_1/core/data/models/CommentReplyGet/CommentReplyGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/AccountComment/AccountComment.dart';
import 'package:flutter_application_1/core/data/models/PostModel/AccountCommentFullGet/AccountCommentFullGet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'CommentFullGet.freezed.dart';
part 'CommentFullGet.g.dart';

@freezed
class CommentFullGet with _$CommentFullGet {
  factory CommentFullGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'contentCmt') String? contentCmt,
    @JsonKey(name: 'accountId') String? accountId,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'account') required AccountCommentFullGet account,
    @JsonKey(name: 'commentReply') List<CommentReplyGet>? commentReply,
  }) = _CommentFullGet;
  factory CommentFullGet.fromJson(Map<String, Object?> json) =>
      _$CommentFullGetFromJson(json);
}
