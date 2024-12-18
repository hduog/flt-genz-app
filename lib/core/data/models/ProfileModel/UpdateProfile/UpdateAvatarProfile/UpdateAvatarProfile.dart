
import 'package:freezed_annotation/freezed_annotation.dart';

part 'UpdateAvatarProfile.freezed.dart';
part 'UpdateAvatarProfile.g.dart';

@freezed
class UpdateAvatarProfile with _$UpdateAvatarProfile {
  factory UpdateAvatarProfile({
    @JsonKey(name: 'isDelete') required bool isDelete,
    @JsonKey(name: 'path') required String  path,
  }) = _UpdateAvatarProfile;
  factory UpdateAvatarProfile.fromJson(Map<String, Object?> json) =>
      _$UpdateAvatarProfileFromJson(json);
}
