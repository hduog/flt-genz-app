// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostInfoGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostInfoGetImpl _$$PostInfoGetImplFromJson(Map<String, dynamic> json) =>
    _$PostInfoGetImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataGet.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationGet.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostInfoGetImplToJson(_$PostInfoGetImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };
