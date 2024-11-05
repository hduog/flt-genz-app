import 'package:freezed_annotation/freezed_annotation.dart';

part 'AuthorGet.freezed.dart';
part 'AuthorGet.g.dart';

@freezed
class AuthorGet with _$AuthorGet {
  factory AuthorGet({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'fullName') required String fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'aboutMe') String? aboutMe,
    @JsonKey(name: 'nickName') String? nickName,
    @JsonKey(name: 'birth') String? birth,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'avata') String? avata,
  }) = _AuthorGet;
  factory AuthorGet.fromJson(Map<String, Object?> json) =>
      _$AuthorGetFromJson(json);
}
