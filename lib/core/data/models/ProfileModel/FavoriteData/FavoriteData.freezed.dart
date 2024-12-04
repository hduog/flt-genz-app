// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'FavoriteData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteData _$FavoriteDataFromJson(Map<String, dynamic> json) {
  return _FavoriteData.fromJson(json);
}

/// @nodoc
mixin _$FavoriteData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nameFavorite')
  String get nameFavorite => throw _privateConstructorUsedError;

  /// Serializes this FavoriteData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteDataCopyWith<FavoriteData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteDataCopyWith<$Res> {
  factory $FavoriteDataCopyWith(
          FavoriteData value, $Res Function(FavoriteData) then) =
      _$FavoriteDataCopyWithImpl<$Res, FavoriteData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'nameFavorite') String nameFavorite});
}

/// @nodoc
class _$FavoriteDataCopyWithImpl<$Res, $Val extends FavoriteData>
    implements $FavoriteDataCopyWith<$Res> {
  _$FavoriteDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameFavorite = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteDataImplCopyWith<$Res>
    implements $FavoriteDataCopyWith<$Res> {
  factory _$$FavoriteDataImplCopyWith(
          _$FavoriteDataImpl value, $Res Function(_$FavoriteDataImpl) then) =
      __$$FavoriteDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'nameFavorite') String nameFavorite});
}

/// @nodoc
class __$$FavoriteDataImplCopyWithImpl<$Res>
    extends _$FavoriteDataCopyWithImpl<$Res, _$FavoriteDataImpl>
    implements _$$FavoriteDataImplCopyWith<$Res> {
  __$$FavoriteDataImplCopyWithImpl(
      _$FavoriteDataImpl _value, $Res Function(_$FavoriteDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameFavorite = null,
  }) {
    return _then(_$FavoriteDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nameFavorite: null == nameFavorite
          ? _value.nameFavorite
          : nameFavorite // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteDataImpl implements _FavoriteData {
  _$FavoriteDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'nameFavorite') required this.nameFavorite});

  factory _$FavoriteDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'nameFavorite')
  final String nameFavorite;

  @override
  String toString() {
    return 'FavoriteData(id: $id, nameFavorite: $nameFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameFavorite, nameFavorite) ||
                other.nameFavorite == nameFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameFavorite);

  /// Create a copy of FavoriteData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteDataImplCopyWith<_$FavoriteDataImpl> get copyWith =>
      __$$FavoriteDataImplCopyWithImpl<_$FavoriteDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteDataImplToJson(
      this,
    );
  }
}

abstract class _FavoriteData implements FavoriteData {
  factory _FavoriteData(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'nameFavorite') required final String nameFavorite}) =
      _$FavoriteDataImpl;

  factory _FavoriteData.fromJson(Map<String, dynamic> json) =
      _$FavoriteDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'nameFavorite')
  String get nameFavorite;

  /// Create a copy of FavoriteData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteDataImplCopyWith<_$FavoriteDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
