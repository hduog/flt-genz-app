import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogDataDetail/BlogDataDetail.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/RelatedBlog/RelatedBlog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'BlogDetail.freezed.dart';
part 'BlogDetail.g.dart';
@freezed
class BlogDetail with _$BlogDetail {
  factory BlogDetail({
    @JsonKey(name: 'blog') required BlogDataDetail blog,
    @JsonKey(name: 'relatedBlog') List<RelatedBlog>? relatedBlog,
  }) = _BlogDetail;
  factory BlogDetail.fromJson(Map<String, Object?> json) =>
      _$BlogDetailFromJson(json);
}
