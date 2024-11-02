// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BasicInfoGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicInfoGetImpl _$$BasicInfoGetImplFromJson(Map<String, dynamic> json) =>
    _$BasicInfoGetImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      fullName: json['fullName'] as String,
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => RoleInfoGet.fromJson(e as Map<String, dynamic>))
          .toList(),
      birth: json['birth'] as String?,
      address: json['address'] as String?,
      nickName: json['nickName'] as String?,
      phone: json['phone'] as String?,
      avata: json['avata'] as String?,
      banner: json['banner'] as String?,
      descriptionRole: json['descriptionRole'] as String?,
    );

Map<String, dynamic> _$$BasicInfoGetImplToJson(_$BasicInfoGetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'roles': instance.roles,
      'birth': instance.birth,
      'address': instance.address,
      'nickName': instance.nickName,
      'phone': instance.phone,
      'avata': instance.avata,
      'banner': instance.banner,
      'descriptionRole': instance.descriptionRole,
    };
