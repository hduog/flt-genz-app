import 'package:flutter_application_1/core/data/models/BlogModel/AccountBlog/AccountBlog.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/CateBlog/CateBlog.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/CommentBlog/CommentBlog.dart';


import 'package:freezed_annotation/freezed_annotation.dart';

part 'BlogData.freezed.dart';
part 'BlogData.g.dart';
@freezed
class BlogData with _$BlogData {
  factory BlogData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title')  String? title,
    @JsonKey(name: 'body')  String? body,
    @JsonKey(name: 'thumbnailBlog') String? thumbnailBlog,
    @JsonKey(name: 'rating')  int? rating,
    @JsonKey(name: 'views') int? views,
    @JsonKey(name: 'cateBlog') List<CateBlog>? cateBlog,
    @JsonKey(name: 'account') AccountBlog? account,
    @JsonKey(name: 'comments') List<CommentBlog>? comments,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'commentReply') String? commentReply,


  }) = _BlogData ;
  factory BlogData .fromJson(Map<String, Object?> json) =>
      _$BlogDataFromJson(json);
}
