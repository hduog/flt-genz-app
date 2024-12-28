
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ReactionBlog.freezed.dart';
part 'ReactionBlog.g.dart';
@freezed
class ReactionBlog with _$ReactionBlog {
  factory ReactionBlog({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'typeName')  String? typeName,




  }) = _ReactionBlog;
  factory ReactionBlog.fromJson(Map<String, Object?> json) =>
      _$ReactionBlogFromJson(json);
}
