import 'package:freezed_annotation/freezed_annotation.dart';

part 'ImageForCreate.freezed.dart';
part 'ImageForCreate.g.dart';

@freezed
class ImageForCreate with _$ImageForCreate {
  factory ImageForCreate({
    @JsonKey(name: 'filePath') required String filePath,
  }) = _ImageForCreate;
  factory ImageForCreate.fromJson(Map<String, Object?> json) =>
      _$ImageForCreateFromJson(json);
}
