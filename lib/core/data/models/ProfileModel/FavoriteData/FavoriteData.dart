import 'package:freezed_annotation/freezed_annotation.dart';

part 'FavoriteData.freezed.dart';
part 'FavoriteData.g.dart';

@freezed
class FavoriteData with _$FavoriteData {
  factory FavoriteData({
    @JsonKey(name: 'id')  required String id,
    @JsonKey(name: 'nameFavorite')  required String nameFavorite,
  }) = _FavoriteData;
  factory FavoriteData.fromJson(Map<String, Object?> json) =>
      _$FavoriteDataFromJson(json);
}
