
import 'package:freezed_annotation/freezed_annotation.dart';

part 'UpdateBannerProfile.freezed.dart';
part 'UpdateBannerProfile.g.dart';

@freezed
class UpdateBannerProfile with _$UpdateBannerProfile {
  factory UpdateBannerProfile({
    @JsonKey(name: 'isDelete') required bool isDelete,
    @JsonKey(name: 'path') required String  path,
  }) = _UpdateBannerProfile;
  factory UpdateBannerProfile.fromJson(Map<String, Object?> json) =>
      _$UpdateBannerProfileFromJson(json);
}
