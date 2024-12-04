// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BlogDataDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogDataDetailImpl _$$BlogDataDetailImplFromJson(Map<String, dynamic> json) =>
    _$BlogDataDetailImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      body: json['body'] as String?,
      thumbnailBlog: json['thumbnailBlog'] as String?,
      reactions: (json['reactions'] as List<dynamic>?)
          ?.map((e) => ReactionBlog.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: (json['rating'] as num?)?.toInt(),
      views: (json['views'] as num?)?.toInt(),
      cateBlog: (json['cateBlog'] as List<dynamic>?)
          ?.map((e) => CateBlog.fromJson(e as Map<String, dynamic>))
          .toList(),
      account: json['account'] == null
          ? null
          : AccountBlog.fromJson(json['account'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentBlog.fromJson(e as Map<String, dynamic>))
          .toList(),
      created_at: json['created_at'] as String?,
      linkToResourceHTML: json['linkToResourceHTML'] as String?,
      menuType: (json['menuType'] as num?)?.toInt(),
      totalLike: (json['totalLike'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BlogDataDetailImplToJson(
        _$BlogDataDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'thumbnailBlog': instance.thumbnailBlog,
      'reactions': instance.reactions,
      'rating': instance.rating,
      'views': instance.views,
      'cateBlog': instance.cateBlog,
      'account': instance.account,
      'comments': instance.comments,
      'created_at': instance.created_at,
      'linkToResourceHTML': instance.linkToResourceHTML,
      'menuType': instance.menuType,
      'totalLike': instance.totalLike,
    };
