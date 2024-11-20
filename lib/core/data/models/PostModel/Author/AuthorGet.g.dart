// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AuthorGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorGetImpl _$$AuthorGetImplFromJson(Map<String, dynamic> json) =>
    _$AuthorGetImpl(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      phone: json['phone'] as String?,
      aboutMe: json['aboutMe'] as String?,
      nickName: json['nickName'] as String?,
      birth: json['birth'] as String?,
      address: json['address'] as String?,
      avata: json['avata'] as String?,
    );

Map<String, dynamic> _$$AuthorGetImplToJson(_$AuthorGetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'aboutMe': instance.aboutMe,
      'nickName': instance.nickName,
      'birth': instance.birth,
      'address': instance.address,
      'avata': instance.avata,
    };
