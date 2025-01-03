import 'package:flutter_application_1/core/data/models/FollowModel/ReciverResponse/ReciverResponse.dart';
import 'package:flutter_application_1/core/data/models/FollowModel/SenderResponse/SenderResponse.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'FollowForResponse.freezed.dart';
part 'FollowForResponse.g.dart';

@freezed
class FollowForResponse with _$FollowForResponse {
  factory FollowForResponse({
    @JsonKey(name: 'id')  required String id,
     @JsonKey(name: 'senderId') required String senderId,
    @JsonKey(name: 'sender')  required SenderResponse sender,
    @JsonKey(name: 'reciver')  required ReciverResponse reciver,
    @JsonKey(name: 'reciverId') required String reciverId,
    @JsonKey(name: 'created_at')  required String created_at,
    @JsonKey(name: 'updated_at')  required String updated_at,
  }) = _FollowForResponse;
  factory FollowForResponse.fromJson(Map<String, Object?> json) =>
      _$FollowForResponseFromJson(json);
}
