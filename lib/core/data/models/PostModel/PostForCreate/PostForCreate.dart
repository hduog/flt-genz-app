
import 'package:freezed_annotation/freezed_annotation.dart';

part 'PostForCreate.freezed.dart';
part 'PostForCreate.g.dart';

@freezed
class PostForCreate with _$PostForCreate {
  factory PostForCreate({
    @JsonKey(name: 'contentText') required String contentText,
    @JsonKey(name: 'accountId')  required String accountId, 
    @JsonKey(name: 'imagePaths')  List<String>? imagePaths, 
    @JsonKey(name: 'permissionPostId')  required String permissionPostId, 
  }) = _PostForCreate;
  factory PostForCreate.fromJson(Map<String, Object?> json) =>
      _$PostForCreateFromJson(json);
}
