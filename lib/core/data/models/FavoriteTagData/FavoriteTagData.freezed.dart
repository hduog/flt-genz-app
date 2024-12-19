// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'FavoriteTagData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteTagData _$FavoriteTagDataFromJson(Map<String, dynamic> json) {
  return _FavoriteTagData.fromJson(json);
}

/// @nodoc
mixin _$FavoriteTagData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nameFavorite')
  String get nameFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'descriptionFavorite')
  String get descriptionFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updated_at => throw _privateConstructorUsedError;

  /// Serializes this FavoriteTagData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteTagData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteTagDataCopyWith<FavoriteTagData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTagDataCopyWith<$Res> {
  factory $FavoriteTagDataCopyWith(
          FavoriteTagData value, $Res Function(FavoriteTagData) then) =
      _$FavoriteTagDataCopyWithImpl<$Res, FavoriteTagData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'nameFavorite') String nameFavorite,
      @JsonKey(name: 'descriptionFavorite') String descriptionFavorite,
      @JsonKey(name: 'created_at') String created_at,
      @JsonKey(name: 'updated_at') String? updated_at});
}

/// @nodoc
class _$FavoriteTagDataCopyWithImpl<$Res, $Val extends FavoriteTagData>
    implements $FavoriteTagDataCopyWith<$Res> {
  _$FavoriteTagDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteTagData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameFavorite = null,
    Object? descriptionFavorite = null,
    Object? created_at = null,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nameFavorite: null == nameFavorite
          ? _value.nameFavorite
          : nameFavorite // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionFavorite: null == descriptionFavorite
          ? _value.descriptionFavorite
          : descriptionFavorite // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteTagDataImplCopyWith<$Res>
    implements $FavoriteTagDataCopyWith<$Res> {
  factory _$$FavoriteTagDataImplCopyWith(_$FavoriteTagDataImpl value,
          $Res Function(_$FavoriteTagDataImpl) then) =
      __$$FavoriteTagDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'nameFavorite') String nameFavorite,
      @JsonKey(name: 'descriptionFavorite') String descriptionFavorite,
      @JsonKey(name: 'created_at') String created_at,
      @JsonKey(name: 'updated_at') String? updated_at});
}

/// @nodoc
class __$$FavoriteTagDataImplCopyWithImpl<$Res>
    extends _$FavoriteTagDataCopyWithImpl<$Res, _$FavoriteTagDataImpl>
    implements _$$FavoriteTagDataImplCopyWith<$Res> {
  __$$FavoriteTagDataImplCopyWithImpl(
      _$FavoriteTagDataImpl _value, $Res Function(_$FavoriteTagDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteTagData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameFavorite = null,
    Object? descriptionFavorite = null,
    Object? created_at = null,
    Object? updated_at = freezed,
  }) {
    return _then(_$FavoriteTagDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nameFavorite: null == nameFavorite
          ? _value.nameFavorite
          : nameFavorite // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionFavorite: null == descriptionFavorite
          ? _value.descriptionFavorite
          : descriptionFavorite // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteTagDataImpl implements _FavoriteTagData {
  _$FavoriteTagDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'nameFavorite') required this.nameFavorite,
      @JsonKey(name: 'descriptionFavorite') required this.descriptionFavorite,
      @JsonKey(name: 'created_at') required this.created_at,
      @JsonKey(name: 'updated_at') this.updated_at});

  factory _$FavoriteTagDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteTagDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'nameFavorite')
  final String nameFavorite;
  @override
  @JsonKey(name: 'descriptionFavorite')
  final String descriptionFavorite;
  @override
  @JsonKey(name: 'created_at')
  final String created_at;
  @override
  @JsonKey(name: 'updated_at')
  final String? updated_at;

  @override
  String toString() {
    return 'FavoriteTagData(id: $id, nameFavorite: $nameFavorite, descriptionFavorite: $descriptionFavorite, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteTagDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameFavorite, nameFavorite) ||
                other.nameFavorite == nameFavorite) &&
            (identical(other.descriptionFavorite, descriptionFavorite) ||
                other.descriptionFavorite == descriptionFavorite) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameFavorite,
      descriptionFavorite, created_at, updated_at);

  /// Create a copy of FavoriteTagData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteTagDataImplCopyWith<_$FavoriteTagDataImpl> get copyWith =>
      __$$FavoriteTagDataImplCopyWithImpl<_$FavoriteTagDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteTagDataImplToJson(
      this,
    );
  }
}

abstract class _FavoriteTagData implements FavoriteTagData {
  factory _FavoriteTagData(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'nameFavorite') required final String nameFavorite,
          @JsonKey(name: 'descriptionFavorite')
          required final String descriptionFavorite,
          @JsonKey(name: 'created_at') required final String created_at,
          @JsonKey(name: 'updated_at') final String? updated_at}) =
      _$FavoriteTagDataImpl;

  factory _FavoriteTagData.fromJson(Map<String, dynamic> json) =
      _$FavoriteTagDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'nameFavorite')
  String get nameFavorite;
  @override
  @JsonKey(name: 'descriptionFavorite')
  String get descriptionFavorite;
  @override
  @JsonKey(name: 'created_at')
  String get created_at;
  @override
  @JsonKey(name: 'updated_at')
  String? get updated_at;

  /// Create a copy of FavoriteTagData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteTagDataImplCopyWith<_$FavoriteTagDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
