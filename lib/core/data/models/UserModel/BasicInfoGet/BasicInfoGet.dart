import 'package:flutter_application_1/core/data/models/UserModel/RoleInfoGet/RoleInfoGet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'BasicInfoGet.freezed.dart';
part 'BasicInfoGet.g.dart';

@freezed
class BasicInfoGet with _$BasicInfoGet {
  factory BasicInfoGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'roles') List<RoleInfoGet>? roles,
    @JsonKey(name: 'birth') String? birth,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'nickName') String? nickName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avata') String? avata,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'descriptionRole') String? descriptionRole,
  }) = _BasicInfoGet;
  factory BasicInfoGet.fromJson(Map<String, Object?> json) =>
      _$BasicInfoGetFromJson(json);
}
