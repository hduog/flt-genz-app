import 'package:flutter_application_1/core/data/models/Search/AccountSearchResponse/AccountSearchResponse.dart';
import 'package:flutter_application_1/core/data/models/Search/ImageResponse/ImageSearchResponse.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'SearchPostResponse.freezed.dart';
part 'SearchPostResponse.g.dart';

@freezed
class SearchPostResponse with _$SearchPostResponse {
  factory SearchPostResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'contentText') String? contentText,
    @JsonKey(name: 'account')  required AccountSearchResponse account,
    @JsonKey(name: 'images')  List<ImageSearchResponse>? images,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'updated_at') String? updated_at,
  }) = _SearchPostResponse;
  factory SearchPostResponse.fromJson(Map<String, Object?> json) =>
      _$SearchPostResponseFromJson(json);
}
