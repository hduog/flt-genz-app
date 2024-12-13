// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CommentReplyGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentReplyGetImpl _$$CommentReplyGetImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentReplyGetImpl(
      id: json['id'] as String,
      contentCmt: json['contentCmt'] as String,
      created_at: json['created_at'] as String,
      account: AccountCommentFullGet.fromJson(
          json['account'] as Map<String, dynamic>),
      accountMention: AccountCommentFullGet.fromJson(
          json['accountMention'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentReplyGetImplToJson(
        _$CommentReplyGetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contentCmt': instance.contentCmt,
      'created_at': instance.created_at,
      'account': instance.account,
      'accountMention': instance.accountMention,
    };
