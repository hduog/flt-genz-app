
import 'package:freezed_annotation/freezed_annotation.dart';

part 'IsFollowDataOtherAccount.freezed.dart';
part 'IsFollowDataOtherAccount.g.dart';

@freezed
class IsFollowDataOtherAccount with _$IsFollowDataOtherAccount {
  factory IsFollowDataOtherAccount({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
  }) = _IsFollowDataOtherAccount;
  factory IsFollowDataOtherAccount.fromJson(Map<String, Object?> json) =>
      _$IsFollowDataOtherAccountFromJson(json);
}
