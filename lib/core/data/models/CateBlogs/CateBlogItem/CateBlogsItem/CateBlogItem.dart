import 'package:freezed_annotation/freezed_annotation.dart';

part 'CateBlogItem.freezed.dart';
part 'CateBlogItem.g.dart';

@freezed
class CateBlogItem with _$CateBlogItem {
  factory CateBlogItem({
    @JsonKey(name: 'id') required String id, 
    @JsonKey(name: 'title') required String title, 
    @JsonKey(name: 'description') String? description, 
    @JsonKey(name: 'thumbnailCateBlog')  String? thumbnailCateBlog, 

  }) = _CateBlogItem;
  factory CateBlogItem.fromJson(Map<String, Object?> json) =>
      _$CateBlogItemFromJson(json);
}
