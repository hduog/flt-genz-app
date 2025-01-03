import 'package:freezed_annotation/freezed_annotation.dart';

part 'FollowForCreate.freezed.dart';
part 'FollowForCreate.g.dart';

@freezed
class FollowForCreate with _$FollowForCreate {
  factory FollowForCreate({
    @JsonKey(name: 'senderId') required String senderId,
    @JsonKey(name: 'reciverId') required String reciverId,
  }) = _FollowForCreate;
  factory FollowForCreate.fromJson(Map<String, Object?> json) =>
      _$FollowForCreateFromJson(json);
}

Map<String, dynamic> _$FollowForCreateToJson(FollowForCreate instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'reciverId': instance.reciverId,
    };
