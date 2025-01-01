
import 'package:freezed_annotation/freezed_annotation.dart';

part 'IsFollowDataOtherAccount.freezed.dart';
part 'IsFollowDataOtherAccount.g.dart';

@freezed
class IsFollowDataOtherAccount with _$IsFollowDataOtherAccount {
  factory IsFollowDataOtherAccount({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'followShipId') String? followShipId,
    @JsonKey(name: 'followShipIdOfFollowing') String? followShipIdOfFollowing,
    @JsonKey(name: 'followShipIdOfFollower') String? followShipIdOfFollower,
  }) = _IsFollowDataOtherAccount;
  factory IsFollowDataOtherAccount.fromJson(Map<String, Object?> json) =>
      _$IsFollowDataOtherAccountFromJson(json);
}
