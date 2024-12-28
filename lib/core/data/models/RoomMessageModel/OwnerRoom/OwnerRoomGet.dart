import 'package:freezed_annotation/freezed_annotation.dart';
part 'OwnerRoomGet.freezed.dart';
part 'OwnerRoomGet.g.dart';

@freezed
class OwnerRoomGet with _$OwnerRoomGet {
  factory OwnerRoomGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'avata') String? avata,
  }) = _OwnerRoomGet;
  factory OwnerRoomGet.fromJson(Map<String, Object?> json) =>
      _$OwnerRoomGetFromJson(json);
}
