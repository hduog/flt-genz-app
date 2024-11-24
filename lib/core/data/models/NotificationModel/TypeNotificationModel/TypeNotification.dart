import 'package:freezed_annotation/freezed_annotation.dart';

part 'TypeNotification.freezed.dart';
part 'TypeNotification.g.dart';

@freezed
class TypeNotification with _$TypeNotification {
  factory TypeNotification({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'typeName') required String typeName,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'thumbnailNoti') String? thumbnailNoti,

  }) = _TypeNotification;
  factory TypeNotification.fromJson(Map<String, Object?> json) =>
      _$TypeNotificationFromJson(json);
}
