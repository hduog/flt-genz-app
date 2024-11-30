// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CateBlog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CateBlogImpl _$$CateBlogImplFromJson(Map<String, dynamic> json) =>
    _$CateBlogImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      body: json['description'] as String?,
      thumbnailBlog: json['thumbnailCateBlog'] as String?,
    );

Map<String, dynamic> _$$CateBlogImplToJson(_$CateBlogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.body,
      'thumbnailCateBlog': instance.thumbnailBlog,
    };
