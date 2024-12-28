import 'package:freezed_annotation/freezed_annotation.dart';

part 'TypeImage.freezed.dart';
part 'TypeImage.g.dart';

@freezed
class TypeImage with _$TypeImage {
  factory TypeImage({
    @JsonKey(name: 'typeImageName') required String typeImageName, //DEFINE ENTITY

  }) = _TypeImage;
  factory TypeImage.fromJson(Map<String, Object?> json) =>
      _$TypeImageFromJson(json);
}
