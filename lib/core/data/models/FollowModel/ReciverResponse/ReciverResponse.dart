import 'package:freezed_annotation/freezed_annotation.dart';

part 'ReciverResponse.freezed.dart';
part 'ReciverResponse.g.dart';

@freezed
class ReciverResponse with _$ReciverResponse {
  factory ReciverResponse({
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'id') required String id,
     @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'aboutMe') required String aboutMe,
     @JsonKey(name: 'nickName') required String nickName,
    @JsonKey(name: 'birth') required String birth,
    @JsonKey(name: 'address') required String address,
  }) = _ReciverResponse;
  factory ReciverResponse.fromJson(Map<String, Object?> json) =>
      _$ReciverResponseFromJson(json);
}
