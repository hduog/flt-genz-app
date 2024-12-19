import 'package:freezed_annotation/freezed_annotation.dart';

part 'FavoriteTagData.freezed.dart';
part 'FavoriteTagData.g.dart';

@freezed
class FavoriteTagData with _$FavoriteTagData {
  factory FavoriteTagData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'nameFavorite') required String nameFavorite,
    @JsonKey(name: 'descriptionFavorite') required String descriptionFavorite,
    @JsonKey(name: 'created_at') required String created_at,
    @JsonKey(name: 'updated_at') String? updated_at,
  }) = _FavoriteTagData;
  factory FavoriteTagData.fromJson(Map<String, Object?> json) =>
      _$FavoriteTagDataFromJson(json);
}
