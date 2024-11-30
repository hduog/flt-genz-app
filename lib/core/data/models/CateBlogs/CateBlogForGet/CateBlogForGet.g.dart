// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CateBlogForGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CateBlogForGetImpl _$$CateBlogForGetImplFromJson(Map<String, dynamic> json) =>
    _$CateBlogForGetImpl(
      cateBlogItem: (json['cateBlogItem'] as List<dynamic>)
          .map((e) => CateBlogItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CateBlogForGetImplToJson(
        _$CateBlogForGetImpl instance) =>
    <String, dynamic>{
      'cateBlogItem': instance.cateBlogItem,
    };
