// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DataGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataGetImpl _$$DataGetImplFromJson(Map<String, dynamic> json) =>
    _$DataGetImpl(
      account: AuthorGet.fromJson(json['account'] as Map<String, dynamic>),
      accountId: json['accountId'] as String,
      contentText: json['contentText'] as String?,
      created_at: json['created_at'] as String?,
      id: json['id'] as String,
      isSave: json['isSave'] as bool?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageGet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataGetImplToJson(_$DataGetImpl instance) =>
    <String, dynamic>{
      'account': instance.account,
      'accountId': instance.accountId,
      'contentText': instance.contentText,
      'created_at': instance.created_at,
      'id': instance.id,
      'isSave': instance.isSave,
      'images': instance.images,
    };
