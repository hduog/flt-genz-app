import 'package:flutter_application_1/core/data/models/BlogModel/AccountBlog/AccountBlog.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/CateBlog/CateBlog.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/CommentBlog/CommentBlog.dart';


import 'package:freezed_annotation/freezed_annotation.dart';

part 'RelatedBlog.freezed.dart';
part 'RelatedBlog.g.dart';
@freezed
class RelatedBlog with _$RelatedBlog {
  factory RelatedBlog({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title')  String? title,
    @JsonKey(name: 'body')  String? body,
    @JsonKey(name: 'thumbnailBlog') String? thumbnailBlog,
    @JsonKey(name: 'account') AccountBlog? account,
    @JsonKey(name: 'created_at') String? created_at,



  }) = _RelatedBlog ;
  factory RelatedBlog.fromJson(Map<String, Object?> json) =>
      _$RelatedBlogFromJson(json);
}
