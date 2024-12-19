// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FavoriteTagData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteTagDataImpl _$$FavoriteTagDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteTagDataImpl(
      id: json['id'] as String,
      nameFavorite: json['nameFavorite'] as String,
      descriptionFavorite: json['descriptionFavorite'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$FavoriteTagDataImplToJson(
        _$FavoriteTagDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameFavorite': instance.nameFavorite,
      'descriptionFavorite': instance.descriptionFavorite,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
