
import 'package:flutter_application_1/core/data/models/BlogModel/AccountBlog/AccountBlog.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/CateBlog/CateBlog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'FeatureItem.freezed.dart';
part 'FeatureItem.g.dart';

@freezed
class FeatureItem with _$FeatureItem {
  factory FeatureItem({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'thumbnailFileName') required String thumbnailFileName,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'updated_at') String? updated_at,
  }) = _FeatureItem;
  factory FeatureItem.fromJson(Map<String, Object?> json) =>
      _$FeatureItemFromJson(json);
}
