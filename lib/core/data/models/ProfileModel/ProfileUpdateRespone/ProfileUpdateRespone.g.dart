// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProfileUpdateRespone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileUpdateResponeImpl _$$ProfileUpdateResponeImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileUpdateResponeImpl(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      phone: json['phone'] as String,
      aboutMe: json['aboutMe'] as String,
      nickName: json['nickName'] as String,
      birth: json['birth'] as String,
      address: json['address'] as String,
      avata: json['avata'] as String?,
    );

Map<String, dynamic> _$$ProfileUpdateResponeImplToJson(
        _$ProfileUpdateResponeImpl instance) =>
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
