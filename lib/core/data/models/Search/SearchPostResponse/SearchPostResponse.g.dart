// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SearchPostResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchPostResponseImpl _$$SearchPostResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchPostResponseImpl(
      id: json['id'] as String,
      contentText: json['contentText'] as String?,
      account: AccountSearchResponse.fromJson(
          json['account'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageSearchResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SearchPostResponseImplToJson(
        _$SearchPostResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contentText': instance.contentText,
      'account': instance.account,
      'images': instance.images,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
