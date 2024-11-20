import 'package:freezed_annotation/freezed_annotation.dart';

part 'PaginationGet.freezed.dart';
part 'PaginationGet.g.dart';

@freezed
class PaginationGet with _$PaginationGet {
  factory PaginationGet({
    @JsonKey(name: 'limit') required int limit, //DEFINE ENTITY
    @JsonKey(name: 'pageNo') required int pageNo, //DEFINE ENTITY
    @JsonKey(name: 'totalPage') required int totalPage, //DEFINE ENTITY
    @JsonKey(name: 'totalRecord') required int totalRecord, //DEFINE ENTITY
  }) = _PaginationGet;
  factory PaginationGet.fromJson(Map<String, Object?> json) =>
      _$PaginationGetFromJson(json);
}
