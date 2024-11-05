import 'package:freezed_annotation/freezed_annotation.dart';

part 'ImageGet.freezed.dart';
part 'ImageGet.g.dart';

@freezed
class ImageGet with _$ImageGet {
  factory ImageGet({
    @JsonKey(name: 'accountId') required int accountId, //DEFINE ENTITY
    @JsonKey(name: 'postId') required String postId, //DEFINE ENTITY
    @JsonKey(name: 'path') required String path, //DEFINE ENTITY
  }) = _ImageGet;
  factory ImageGet.fromJson(Map<String, Object?> json) =>
      _$ImageGetFromJson(json);
}
