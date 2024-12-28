import 'package:freezed_annotation/freezed_annotation.dart';

part 'ImageResponse.freezed.dart';
part 'ImageResponse.g.dart';

@freezed
class ImageResponse with _$ImageResponse {
  factory ImageResponse({
    @JsonKey(name: 'fieldname') required String fieldname, 
    @JsonKey(name: 'filename') required String filename,
    @JsonKey(name: 'mimetype')  required String mimetype,
    @JsonKey(name: 'originalname')  required String originalname,
    @JsonKey(name: 'size')  required String size,
  }) = _ImageResponse;
  factory ImageResponse.fromJson(Map<String, Object?> json) =>
      _$ImageResponseFromJson(json);
}
