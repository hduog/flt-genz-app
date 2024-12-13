import 'package:flutter_application_1/core/data/models/PostModel/Author/AuthorGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/PostSharedInfor/PostSharedInfor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'InforAuthorAndPostShared.freezed.dart';
part 'InforAuthorAndPostShared.g.dart';

@freezed
class InforAuthorAndPostShared with _$InforAuthorAndPostShared {
  factory InforAuthorAndPostShared({
    @JsonKey(name: 'author') required AuthorGet author,
    @JsonKey(name: 'postInf') required PostSharedInfor postInf,
  }) = _InforAuthorAndPostShared;
  factory InforAuthorAndPostShared.fromJson(Map<String, Object?> json) =>
      _$InforAuthorAndPostSharedFromJson(json);
}
