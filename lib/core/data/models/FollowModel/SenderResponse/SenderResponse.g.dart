// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SenderResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SenderResponseImpl _$$SenderResponseImplFromJson(Map<String, dynamic> json) =>
    _$SenderResponseImpl(
      fullName: json['fullName'] as String,
      id: json['id'] as String,
      phone: json['phone'] as String,
      aboutMe: json['aboutMe'] as String,
      nickName: json['nickName'] as String,
      birth: json['birth'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$SenderResponseImplToJson(
        _$SenderResponseImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'id': instance.id,
      'phone': instance.phone,
      'aboutMe': instance.aboutMe,
      'nickName': instance.nickName,
      'birth': instance.birth,
      'address': instance.address,
    };
