import 'package:freezed_annotation/freezed_annotation.dart';

part 'AccountSearchResponse.freezed.dart';
part 'AccountSearchResponse.g.dart';

@freezed
class AccountSearchResponse with _$AccountSearchResponse {
  factory AccountSearchResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'avata')  required String avata,
  }) = _AccountSearchResponse;
  factory AccountSearchResponse.fromJson(Map<String, Object?> json) =>
      _$AccountSearchResponseFromJson(json);
}
