import 'package:freezed_annotation/freezed_annotation.dart';

part 'PermissionPostGet.freezed.dart';
part 'PermissionPostGet.g.dart';

@freezed
class PermissionPostGet with _$PermissionPostGet {
  factory PermissionPostGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'description')  String? description, 
    @JsonKey(name: 'code')  String? code, 
  }) = _PermissionPostGet;
  factory PermissionPostGet.fromJson(Map<String, Object?> json) =>
      _$PermissionPostGetFromJson(json);
}
