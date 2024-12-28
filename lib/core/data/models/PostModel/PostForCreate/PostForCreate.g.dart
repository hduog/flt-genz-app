// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostForCreate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostForCreateImpl _$$PostForCreateImplFromJson(Map<String, dynamic> json) =>
    _$PostForCreateImpl(
      contentText: json['contentText'] as String,
      accountId: json['accountId'] as String,
      imagePaths: (json['imagePaths'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      permissionPostId: json['permissionPostId'] as String,
    );

Map<String, dynamic> _$$PostForCreateImplToJson(_$PostForCreateImpl instance) =>
    <String, dynamic>{
      'contentText': instance.contentText,
      'accountId': instance.accountId,
      'imagePaths': instance.imagePaths,
      'permissionPostId': instance.permissionPostId,
    };
