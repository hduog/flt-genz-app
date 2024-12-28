import 'package:freezed_annotation/freezed_annotation.dart';

part 'AccountCommentFullGet.freezed.dart';
part 'AccountCommentFullGet.g.dart';

@freezed
class AccountCommentFullGet with _$AccountCommentFullGet {
  factory AccountCommentFullGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'avata') String? avata,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'nickName') String? nickName,
  }) = _AccountCommentFullGet;
  factory AccountCommentFullGet.fromJson(Map<String, Object?> json) =>
      _$AccountCommentFullGetFromJson(json);
}
