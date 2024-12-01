import 'package:flutter_application_1/core/data/models/NotificationModel/TypeNotificationModel/TypeNotification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'NotificationData.freezed.dart';
part 'NotificationData.g.dart';

@freezed
class NotificationData with _$NotificationData {
  factory NotificationData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'typeNotification') TypeNotification? typeNotification,
    @JsonKey(name: 'postId') String? postId,
    @JsonKey(name: 'commentId') String? commentId,
    @JsonKey(name: 'followerId') String? followerId,
    @JsonKey(name: 'messageNotifications') String? messageNotifications,
    @JsonKey(name: 'postShareId') String? postShareId,
    @JsonKey(name: 'reactionId') String? reactionId,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'updated_at') String? updated_at,
    
  }) = _NotificationData;
  factory NotificationData.fromJson(Map<String, Object?> json) =>
      _$NotificationDataFromJson(json);
}
