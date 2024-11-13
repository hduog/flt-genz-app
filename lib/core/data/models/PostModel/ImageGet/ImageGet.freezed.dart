// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ImageGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageGet _$ImageGetFromJson(Map<String, dynamic> json) {
  return _ImageGet.fromJson(json);
}

/// @nodoc
mixin _$ImageGet {
  @JsonKey(name: 'accountId')
  String get accountId => throw _privateConstructorUsedError; //DEFINE ENTITY
  @JsonKey(name: 'postId')
  String get postId => throw _privateConstructorUsedError; //DEFINE ENTITY
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;

  /// Serializes this ImageGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageGetCopyWith<ImageGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGetCopyWith<$Res> {
  factory $ImageGetCopyWith(ImageGet value, $Res Function(ImageGet) then) =
      _$ImageGetCopyWithImpl<$Res, ImageGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'accountId') String accountId,
      @JsonKey(name: 'postId') String postId,
      @JsonKey(name: 'path') String path});
}

/// @nodoc
class _$ImageGetCopyWithImpl<$Res, $Val extends ImageGet>
    implements $ImageGetCopyWith<$Res> {
  _$ImageGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? postId = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageGetImplCopyWith<$Res>
    implements $ImageGetCopyWith<$Res> {
  factory _$$ImageGetImplCopyWith(
          _$ImageGetImpl value, $Res Function(_$ImageGetImpl) then) =
      __$$ImageGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'accountId') String accountId,
      @JsonKey(name: 'postId') String postId,
      @JsonKey(name: 'path') String path});
}

/// @nodoc
class __$$ImageGetImplCopyWithImpl<$Res>
    extends _$ImageGetCopyWithImpl<$Res, _$ImageGetImpl>
    implements _$$ImageGetImplCopyWith<$Res> {
  __$$ImageGetImplCopyWithImpl(
      _$ImageGetImpl _value, $Res Function(_$ImageGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? postId = null,
    Object? path = null,
  }) {
    return _then(_$ImageGetImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageGetImpl implements _ImageGet {
  _$ImageGetImpl(
      {@JsonKey(name: 'accountId') required this.accountId,
      @JsonKey(name: 'postId') required this.postId,
      @JsonKey(name: 'path') required this.path});

  factory _$ImageGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageGetImplFromJson(json);

  @override
  @JsonKey(name: 'accountId')
  final String accountId;
//DEFINE ENTITY
  @override
  @JsonKey(name: 'postId')
  final String postId;
//DEFINE ENTITY
  @override
  @JsonKey(name: 'path')
  final String path;

  @override
  String toString() {
    return 'ImageGet(accountId: $accountId, postId: $postId, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageGetImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accountId, postId, path);

  /// Create a copy of ImageGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageGetImplCopyWith<_$ImageGetImpl> get copyWith =>
      __$$ImageGetImplCopyWithImpl<_$ImageGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageGetImplToJson(
      this,
    );
  }
}

abstract class _ImageGet implements ImageGet {
  factory _ImageGet(
      {@JsonKey(name: 'accountId') required final String accountId,
      @JsonKey(name: 'postId') required final String postId,
      @JsonKey(name: 'path') required final String path}) = _$ImageGetImpl;

  factory _ImageGet.fromJson(Map<String, dynamic> json) =
      _$ImageGetImpl.fromJson;

  @override
  @JsonKey(name: 'accountId')
  String get accountId; //DEFINE ENTITY
  @override
  @JsonKey(name: 'postId')
  String get postId; //DEFINE ENTITY
  @override
  @JsonKey(name: 'path')
  String get path;

  /// Create a copy of ImageGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageGetImplCopyWith<_$ImageGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
