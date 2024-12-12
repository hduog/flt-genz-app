import 'package:flutter_application_1/core/data/models/PostModel/ImageGet/ImageGet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'PostSharedInfor.freezed.dart';
part 'PostSharedInfor.g.dart';

@freezed
class PostSharedInfor with _$PostSharedInfor {
  factory PostSharedInfor({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'images') List<ImageGet>? images,
    @JsonKey(name: 'contentText') String? contentText,
    @JsonKey(name: 'created_at') String? created_at,
  }) = _PostSharedInfor;
  factory PostSharedInfor.fromJson(Map<String, Object?> json) =>
      _$PostSharedInforFromJson(json);
}
