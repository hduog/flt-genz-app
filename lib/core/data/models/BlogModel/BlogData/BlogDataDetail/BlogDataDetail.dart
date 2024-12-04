import 'package:flutter_application_1/core/data/models/BlogModel/AccountBlog/AccountBlog.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/CateBlog/CateBlog.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/CommentBlog/CommentBlog.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/ReactionBlog/ReactionBlog.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'BlogDataDetail.freezed.dart';
part 'BlogDataDetail.g.dart';

@freezed
class BlogDataDetail with _$BlogDataDetail {
  factory BlogDataDetail({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'thumbnailBlog') String? thumbnailBlog,
    @JsonKey(name: 'reactions') List<ReactionBlog>? reactions,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'views') int? views,
    @JsonKey(name: 'cateBlog') List<CateBlog>? cateBlog,
    @JsonKey(name: 'account') AccountBlog? account,
    @JsonKey(name: 'comments') List<CommentBlog>? comments,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'linkToResourceHTML') String? linkToResourceHTML,
    @JsonKey(name: 'menuType') int? menuType,
    @JsonKey(name: 'totalLike') int? totalLike,
  }) = _BlogDataDetail;
  factory BlogDataDetail.fromJson(Map<String, Object?> json) =>
      _$BlogDataDetailFromJson(json);
}
