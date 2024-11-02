import 'package:freezed_annotation/freezed_annotation.dart';

part 'RoleInfoGet.freezed.dart';
part 'RoleInfoGet.g.dart';

@freezed
class RoleInfoGet with _$RoleInfoGet {
  factory RoleInfoGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'nameRole') required String nameRole,
    @JsonKey(name: 'descriptionRole') String? descriptionRole,
  }) = _RoleInfoGet;
  factory RoleInfoGet.fromJson(Map<String, Object?> json) =>
      _$RoleInfoGetFromJson(json);
}
