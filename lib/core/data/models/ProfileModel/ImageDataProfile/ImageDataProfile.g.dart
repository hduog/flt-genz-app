// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ImageDataProfile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageDataProfileImpl _$$ImageDataProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageDataProfileImpl(
      path: json['path'] as String,
      postId: json['postId'] as String?,
      typeImage: TypeImage.fromJson(json['typeImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageDataProfileImplToJson(
        _$ImageDataProfileImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'postId': instance.postId,
      'typeImage': instance.typeImage,
    };
