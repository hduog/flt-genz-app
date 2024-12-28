import 'package:freezed_annotation/freezed_annotation.dart';

part 'ImageSearchResponse.freezed.dart';
part 'ImageSearchResponse.g.dart';

@freezed
class ImageSearchResponse with _$ImageSearchResponse {
  factory ImageSearchResponse({
    @JsonKey(name: 'path') required String path,
  }) = _ImageSearchResponse;
  factory ImageSearchResponse.fromJson(Map<String, Object?> json) =>
      _$ImageSearchResponseFromJson(json);
}
