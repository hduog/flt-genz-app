// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CateBlogItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CateBlogItemImpl _$$CateBlogItemImplFromJson(Map<String, dynamic> json) =>
    _$CateBlogItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      thumbnailCateBlog: json['thumbnailCateBlog'] as String?,
    );

Map<String, dynamic> _$$CateBlogItemImplToJson(_$CateBlogItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnailCateBlog': instance.thumbnailCateBlog,
    };
