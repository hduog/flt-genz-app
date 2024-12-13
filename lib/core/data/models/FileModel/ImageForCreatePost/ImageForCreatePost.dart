import 'package:freezed_annotation/freezed_annotation.dart';

part 'ImageForCreatePost.freezed.dart';
part 'ImageForCreatePost.g.dart';

@freezed
class ImageForCreatePost with _$ImageForCreatePost {
  factory ImageForCreatePost({
    @JsonKey(name: 'filePath') required String filePath,
  }) = _ImageForCreatePost;
  factory ImageForCreatePost.fromJson(Map<String, Object?> json) =>
      _$ImageForCreatePostFromJson(json);
}
