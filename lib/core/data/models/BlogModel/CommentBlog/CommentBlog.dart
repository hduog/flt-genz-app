
import 'package:freezed_annotation/freezed_annotation.dart';

part 'CommentBlog.freezed.dart';
part 'CommentBlog.g.dart';
@freezed
class CommentBlog with _$CommentBlog {
  factory CommentBlog({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fullName')  String? fullName,
    @JsonKey(name: 'avata')  String? avata,




  }) = _CommentBlog;
  factory CommentBlog.fromJson(Map<String, Object?> json) =>
      _$CommentBlogFromJson(json);
}
