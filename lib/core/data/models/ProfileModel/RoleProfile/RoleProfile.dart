import 'package:freezed_annotation/freezed_annotation.dart';

part 'RoleProfile.freezed.dart';
part 'RoleProfile.g.dart';

@freezed
class RoleProfile with _$RoleProfile {
  factory RoleProfile({
    @JsonKey(name: 'nameRole') required String nameRole,
  }) = _RoleProfile;
  factory RoleProfile.fromJson(Map<String, Object?> json) =>
      _$RoleProfileFromJson(json);
}
