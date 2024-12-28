// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HotBlogItemForGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotBlogItemForGetImpl _$$HotBlogItemForGetImplFromJson(
        Map<String, dynamic> json) =>
    _$HotBlogItemForGetImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String?,
      views: (json['views'] as num).toInt(),
      rating: (json['rating'] as num?)?.toInt(),
      thumbnailBlog: json['thumbnailBlog'] as String,
      cateBlog: (json['cateBlog'] as List<dynamic>)
          .map((e) => CateBlog.fromJson(e as Map<String, dynamic>))
          .toList(),
      account: AccountBlog.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotBlogItemForGetImplToJson(
        _$HotBlogItemForGetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'views': instance.views,
      'rating': instance.rating,
      'thumbnailBlog': instance.thumbnailBlog,
      'cateBlog': instance.cateBlog,
      'account': instance.account,
    };
