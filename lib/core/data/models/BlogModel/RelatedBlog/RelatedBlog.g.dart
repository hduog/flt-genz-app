// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RelatedBlog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelatedBlogImpl _$$RelatedBlogImplFromJson(Map<String, dynamic> json) =>
    _$RelatedBlogImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      body: json['body'] as String?,
      thumbnailBlog: json['thumbnailBlog'] as String?,
      account: json['account'] == null
          ? null
          : AccountBlog.fromJson(json['account'] as Map<String, dynamic>),
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$RelatedBlogImplToJson(_$RelatedBlogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'thumbnailBlog': instance.thumbnailBlog,
      'account': instance.account,
      'created_at': instance.created_at,
    };
