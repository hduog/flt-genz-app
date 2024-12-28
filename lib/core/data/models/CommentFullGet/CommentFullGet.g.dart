// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CommentFullGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentFullGetImpl _$$CommentFullGetImplFromJson(Map<String, dynamic> json) =>
    _$CommentFullGetImpl(
      id: json['id'] as String,
      contentCmt: json['contentCmt'] as String?,
      accountId: json['accountId'] as String?,
      created_at: json['created_at'] as String?,
      account: AccountCommentFullGet.fromJson(
          json['account'] as Map<String, dynamic>),
      commentReply: (json['commentReply'] as List<dynamic>?)
          ?.map((e) => CommentReplyGet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentFullGetImplToJson(
        _$CommentFullGetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contentCmt': instance.contentCmt,
      'accountId': instance.accountId,
      'created_at': instance.created_at,
      'account': instance.account,
      'commentReply': instance.commentReply,
    };
