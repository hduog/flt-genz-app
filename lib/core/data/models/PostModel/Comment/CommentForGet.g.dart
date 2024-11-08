// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CommentForGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentForGetImpl _$$CommentForGetImplFromJson(Map<String, dynamic> json) =>
    _$CommentForGetImpl(
      account: (json['account'] as List<dynamic>)
          .map((e) => AccountComment.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$CommentForGetImplToJson(_$CommentForGetImpl instance) =>
    <String, dynamic>{
      'account': instance.account,
      'content': instance.content,
      'created_at': instance.created_at,
    };
