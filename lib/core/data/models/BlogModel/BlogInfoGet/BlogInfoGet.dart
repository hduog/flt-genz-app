import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';

import 'package:flutter_application_1/core/data/models/PostModel/Pagination/PaginationGet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'BlogInfoGet.freezed.dart';
part 'BlogInfoGet.g.dart';

@freezed
class BlogInfoGet with _$BlogInfoGet {
  factory BlogInfoGet({
    @JsonKey(name: 'data') required List<BlogData> data,
    @JsonKey(name: 'pagination') required PaginationGet pagination,
  }) = _BlogInfoGet;
  factory BlogInfoGet.fromJson(Map<String, Object?> json) =>
      _$BlogInfoGetFromJson(json);
}
