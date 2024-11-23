import 'package:flutter_application_1/core/data/models/CateBlogs/CateBlogItem/CateBlogsItem/CateBlogItem.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'CateBlogForGet.freezed.dart';
part 'CateBlogForGet.g.dart';

@freezed
class CateBlogForGet with _$CateBlogForGet {
  factory CateBlogForGet({
    @JsonKey(name: 'cateBlogItem') required List<CateBlogItem> cateBlogItem, 
  }) = _CateBlogForGet;
  factory CateBlogForGet.fromJson(Map<String, dynamic> json) =>
      _$CateBlogForGetFromJson(json);
}
