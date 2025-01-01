
import 'package:freezed_annotation/freezed_annotation.dart';

part 'CheckRequestFollow.freezed.dart';
part 'CheckRequestFollow.g.dart';

@freezed
class CheckRequestFollow with _$CheckRequestFollow {
  factory CheckRequestFollow({
    @JsonKey(name: 'id')   String? id,
     @JsonKey(name: 'status')  int? status,
  }) = _CheckRequestFollow;
  factory CheckRequestFollow.fromJson(Map<String, Object?> json) =>
      _$CheckRequestFollowFromJson(json);
}
