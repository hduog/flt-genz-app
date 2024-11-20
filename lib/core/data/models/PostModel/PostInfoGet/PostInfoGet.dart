import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/Pagination/PaginationGet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'PostInfoGet.freezed.dart';
part 'PostInfoGet.g.dart';

@freezed
class PostInfoGet with _$PostInfoGet {
  factory PostInfoGet({
    @JsonKey(name: 'data') required List<DataGet> data,
    @JsonKey(name: 'pagination') required PaginationGet pagination,
  }) = _PostInfoGet;
  factory PostInfoGet.fromJson(Map<String, Object?> json) =>
      _$PostInfoGetFromJson(json);
}
