// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AccountComment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountCommentImpl _$$AccountCommentImplFromJson(Map<String, dynamic> json) =>
    _$AccountCommentImpl(
      id: json['id'] as String,
      avata: json['avata'] as String?,
      name: json['name'] as String,
      nick_name: json['nick_name'] as String?,
    );

Map<String, dynamic> _$$AccountCommentImplToJson(
        _$AccountCommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avata': instance.avata,
      'name': instance.name,
      'nick_name': instance.nick_name,
    };
