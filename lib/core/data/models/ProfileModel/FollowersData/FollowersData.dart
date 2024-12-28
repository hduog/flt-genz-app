
import 'package:freezed_annotation/freezed_annotation.dart';

part 'FollowersData.freezed.dart';
part 'FollowersData.g.dart';

@freezed
class FollowersData with _$FollowersData {
  factory FollowersData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'nickName')  String? nickName,
    @JsonKey(name: 'avata') String? avata,
  }) = _FollowersData;
  factory FollowersData.fromJson(Map<String, Object?> json) =>
      _$FollowersDataFromJson(json);
}
