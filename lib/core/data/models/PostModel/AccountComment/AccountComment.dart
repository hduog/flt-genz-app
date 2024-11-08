import 'package:freezed_annotation/freezed_annotation.dart';

part 'AccountComment.freezed.dart';
part 'AccountComment.g.dart';

@freezed
class AccountComment with _$AccountComment {
  factory AccountComment({
    @JsonKey(name: 'id') required int id, 
    @JsonKey(name: 'avata')  String? avata, 
    @JsonKey(name: 'name') required String name, 
    @JsonKey(name: 'nick_name')  String? nick_name, 

  }) = _AccountComment;
  factory AccountComment.fromJson(Map<String, Object?> json) =>
      _$AccountCommentFromJson(json);
}
