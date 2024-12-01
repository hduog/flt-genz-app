
import 'package:freezed_annotation/freezed_annotation.dart';

part 'CateBlog.freezed.dart';
part 'CateBlog.g.dart';
@freezed
class CateBlog with _$CateBlog {
  factory CateBlog({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title')  String? title,
    @JsonKey(name: 'description')  String? body,
    @JsonKey(name: 'thumbnailCateBlog') String? thumbnailBlog,



  }) = _CateBlog;
  factory CateBlog.fromJson(Map<String, Object?> json) =>
      _$CateBlogFromJson(json);
}
