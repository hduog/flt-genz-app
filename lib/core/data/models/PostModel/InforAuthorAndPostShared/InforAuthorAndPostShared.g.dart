// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InforAuthorAndPostShared.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InforAuthorAndPostSharedImpl _$$InforAuthorAndPostSharedImplFromJson(
        Map<String, dynamic> json) =>
    _$InforAuthorAndPostSharedImpl(
      author: AuthorGet.fromJson(json['author'] as Map<String, dynamic>),
      postInf:
          PostSharedInfor.fromJson(json['postInf'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InforAuthorAndPostSharedImplToJson(
        _$InforAuthorAndPostSharedImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'postInf': instance.postInf,
    };
