import 'package:flutter_application_1/core/data/models/ProfileModel/ImageDataProfile/TypeImage/TypeImage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ImageDataProfile.freezed.dart';
part 'ImageDataProfile.g.dart';

@freezed
class ImageDataProfile with _$ImageDataProfile {
  factory ImageDataProfile({
    @JsonKey(name: 'path') required String path, 
    @JsonKey(name: 'postId')  String? postId, 
    @JsonKey(name: 'typeImage') required TypeImage typeImage, 
  }) = _ImageDataProfile;
  factory ImageDataProfile.fromJson(Map<String, Object?> json) =>
      _$ImageDataProfileFromJson(json);
}
