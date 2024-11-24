
import 'package:freezed_annotation/freezed_annotation.dart';
part 'AccountBlog.freezed.dart';
part 'AccountBlog.g.dart';

@freezed
class AccountBlog with _$AccountBlog {
  factory AccountBlog({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fullName')  String? fullName,
    @JsonKey(name: 'avata')  String? avata,




  }) = _AccountBlog;
  factory AccountBlog.fromJson(Map<String, Object?> json) =>
      _$AccountBlogFromJson(json);
}
