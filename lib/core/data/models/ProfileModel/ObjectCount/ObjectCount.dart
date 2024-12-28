
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ObjectCount.freezed.dart';
part 'ObjectCount.g.dart';

@freezed
class ObjectCount with _$ObjectCount {
  factory ObjectCount({
    @JsonKey(name: 'posts') int? posts,
    @JsonKey(name: 'followers') int? followers,
    @JsonKey(name: 'followings') int? followings,
    @JsonKey(name: 'postShares') int? postShares,
    @JsonKey(name: 'images') int? images,
    @JsonKey(name: 'RequestFollow') int? RequestFollow,
  }) = _ObjectCount;
  factory ObjectCount.fromJson(Map<String, Object?> json) =>
      _$ObjectCountFromJson(json);
}
