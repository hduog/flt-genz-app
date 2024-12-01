// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NotificationData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      id: json['id'] as String,
      typeNotification: json['typeNotification'] == null
          ? null
          : TypeNotification.fromJson(
              json['typeNotification'] as Map<String, dynamic>),
      postId: json['postId'] as String?,
      commentId: json['commentId'] as String?,
      followerId: json['followerId'] as String?,
      messageNotifications: json['messageNotifications'] as String?,
      postShareId: json['postShareId'] as String?,
      reactionId: json['reactionId'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'typeNotification': instance.typeNotification,
      'postId': instance.postId,
      'commentId': instance.commentId,
      'followerId': instance.followerId,
      'messageNotifications': instance.messageNotifications,
      'postShareId': instance.postShareId,
      'reactionId': instance.reactionId,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
