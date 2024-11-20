// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PaginationGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationGetImpl _$$PaginationGetImplFromJson(Map<String, dynamic> json) =>
    _$PaginationGetImpl(
      limit: (json['limit'] as num).toInt(),
      pageNo: (json['pageNo'] as num).toInt(),
      totalPage: (json['totalPage'] as num).toInt(),
      totalRecord: (json['totalRecord'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginationGetImplToJson(_$PaginationGetImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'pageNo': instance.pageNo,
      'totalPage': instance.totalPage,
      'totalRecord': instance.totalRecord,
    };
