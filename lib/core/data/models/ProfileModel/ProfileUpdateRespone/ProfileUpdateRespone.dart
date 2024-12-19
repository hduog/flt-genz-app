import 'package:freezed_annotation/freezed_annotation.dart';

part 'ProfileUpdateRespone.freezed.dart';
part 'ProfileUpdateRespone.g.dart';

@freezed
class ProfileUpdateRespone with _$ProfileUpdateRespone {
  factory ProfileUpdateRespone({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'aboutMe') required String aboutMe,
    @JsonKey(name: 'nickName') required String nickName,
    @JsonKey(name: 'birth') required String birth,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'avata')  String? avata,
  }) = _ProfileUpdateRespone;
  factory ProfileUpdateRespone.fromJson(Map<String, Object?> json) =>
      _$ProfileUpdateResponeFromJson(json);
}
