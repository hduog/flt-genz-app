// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BlogDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogDetailImpl _$$BlogDetailImplFromJson(Map<String, dynamic> json) =>
    _$BlogDetailImpl(
      blog: BlogDataDetail.fromJson(json['blog'] as Map<String, dynamic>),
      relatedBlog: (json['relatedBlog'] as List<dynamic>?)
          ?.map((e) => RelatedBlog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BlogDetailImplToJson(_$BlogDetailImpl instance) =>
    <String, dynamic>{
      'blog': instance.blog,
      'relatedBlog': instance.relatedBlog,
    };
