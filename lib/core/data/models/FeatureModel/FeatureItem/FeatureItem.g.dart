// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FeatureItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeatureItemImpl _$$FeatureItemImplFromJson(Map<String, dynamic> json) =>
    _$FeatureItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      thumbnailFileName: json['thumbnailFileName'] as String,
      url: json['url'] as String,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$FeatureItemImplToJson(_$FeatureItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnailFileName': instance.thumbnailFileName,
      'url': instance.url,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
