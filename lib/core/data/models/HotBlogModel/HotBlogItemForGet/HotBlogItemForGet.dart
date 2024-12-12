
import 'package:flutter_application_1/core/data/models/BlogModel/AccountBlog/AccountBlog.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/CateBlog/CateBlog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'HotBlogItemForGet.freezed.dart';
part 'HotBlogItemForGet.g.dart';

@freezed
class HotBlogItemForGet with _$HotBlogItemForGet {
  factory HotBlogItemForGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body')  String? body,
    @JsonKey(name: 'views') required int views,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'thumbnailBlog') required String thumbnailBlog,
    @JsonKey(name: 'cateBlog') required List<CateBlog> cateBlog,
    @JsonKey(name: 'account') required AccountBlog account,
  }) = _HotBlogItemForGet;
  factory HotBlogItemForGet.fromJson(Map<String, Object?> json) =>
      _$HotBlogItemForGetFromJson(json);
}
