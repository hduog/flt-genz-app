import 'package:freezed_annotation/freezed_annotation.dart';

part 'SendSorrowModelGet.freezed.dart';
part 'SendSorrowModelGet.g.dart';

@freezed
class SendSorrowModelGet with _$SendSorrowModelGet {
  factory SendSorrowModelGet({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'nameSound') String? nameSound,
    @JsonKey(name: 'pathPublic') required String pathPublic,
  }) = _SendSorrowModelGet;
  factory SendSorrowModelGet.fromJson(Map<String, Object?> json) =>
      _$SendSorrowModelGetFromJson(json);
}
