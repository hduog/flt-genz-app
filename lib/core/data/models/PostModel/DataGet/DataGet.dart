import 'package:flutter_application_1/core/data/models/PostModel/Author/AuthorGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/Comment/CommentForGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/ImageGet/ImageGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/PermissionPostGet/PermissionPostGet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'DataGet.freezed.dart';
part 'DataGet.g.dart';

@freezed
class DataGet with _$DataGet {
  factory DataGet({
    @JsonKey(name: 'account') required AuthorGet account,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'contentText') String? contentText,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'isSave') bool? isSave,
    @JsonKey(name: 'images') List<ImageGet>? images,
    @JsonKey(name: 'is_liked') bool? is_liked,
    @JsonKey(name: 'totalComment') int? totalComment,
    @JsonKey(name: 'totalReaction') int? totalReaction,
    @JsonKey(name: 'totalShare') int? totalShare,
    @JsonKey(name: 'updated_at') String? updated_at,
    @JsonKey(name: 'permissionPost') required PermissionPostGet permissionPost,
    @JsonKey(name: 'comment_recent') List<CommentForGet>? comment_recent,

  }) = _DataGet;
  factory DataGet.fromJson(Map<String, Object?> json) =>
      _$DataGetFromJson(json);
}
