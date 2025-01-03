import 'package:freezed_annotation/freezed_annotation.dart';

part 'SenderResponse.freezed.dart';
part 'SenderResponse.g.dart';

@freezed
class SenderResponse with _$SenderResponse {
  factory SenderResponse({
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'id') required String id,
     @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'aboutMe') required String aboutMe,
     @JsonKey(name: 'nickName') required String nickName,
    @JsonKey(name: 'birth') required String birth,
    @JsonKey(name: 'address') required String address,
  }) = _SenderResponse;
  factory SenderResponse.fromJson(Map<String, Object?> json) =>
      _$SenderResponseFromJson(json);
}
