// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BlogInfoGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogInfoGetImpl _$$BlogInfoGetImplFromJson(Map<String, dynamic> json) =>
    _$BlogInfoGetImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => BlogData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationGet.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlogInfoGetImplToJson(_$BlogInfoGetImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };
