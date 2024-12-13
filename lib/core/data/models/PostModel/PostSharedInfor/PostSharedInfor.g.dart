// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostSharedInfor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostSharedInforImpl _$$PostSharedInforImplFromJson(
        Map<String, dynamic> json) =>
    _$PostSharedInforImpl(
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageGet.fromJson(e as Map<String, dynamic>))
          .toList(),
      contentText: json['contentText'] as String?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$PostSharedInforImplToJson(
        _$PostSharedInforImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'contentText': instance.contentText,
      'created_at': instance.created_at,
    };
