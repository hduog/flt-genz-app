// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PermissionPostGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PermissionPostGetImpl _$$PermissionPostGetImplFromJson(
        Map<String, dynamic> json) =>
    _$PermissionPostGetImpl(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$PermissionPostGetImplToJson(
        _$PermissionPostGetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'code': instance.code,
    };
