
import 'package:freezed_annotation/freezed_annotation.dart';

part 'FollowingsData.freezed.dart';
part 'FollowingsData.g.dart';

@freezed
class FollowingsData with _$FollowingsData {
  factory FollowingsData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'nickName')  String? nickName,
    @JsonKey(name: 'avata') String? avata,
  }) = _FollowingsData;
  factory FollowingsData.fromJson(Map<String, Object?> json) =>
      _$FollowingsDataFromJson(json);
}
