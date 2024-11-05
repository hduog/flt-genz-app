// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ImageGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageGetImpl _$$ImageGetImplFromJson(Map<String, dynamic> json) =>
    _$ImageGetImpl(
      accountId: (json['accountId'] as num).toInt(),
      postId: json['postId'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$$ImageGetImplToJson(_$ImageGetImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'postId': instance.postId,
      'path': instance.path,
    };
