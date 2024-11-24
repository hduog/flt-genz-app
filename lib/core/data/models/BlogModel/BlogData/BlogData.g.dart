// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BlogData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogDataImpl _$$BlogDataImplFromJson(Map<String, dynamic> json) =>
    _$BlogDataImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      body: json['body'] as String?,
      thumbnailBlog: json['thumbnailBlog'] as String?,
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
      commentReply: json['commentReply'] as String?,
    );

Map<String, dynamic> _$$BlogDataImplToJson(_$BlogDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'thumbnailBlog': instance.thumbnailBlog,
      'rating': instance.rating,
      'views': instance.views,
      'cateBlog': instance.cateBlog,
      'account': instance.account,
      'comments': instance.comments,
      'created_at': instance.created_at,
      'commentReply': instance.commentReply,
    };
