// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ImageDataProfile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageDataProfile _$ImageDataProfileFromJson(Map<String, dynamic> json) {
  return _ImageDataProfile.fromJson(json);
}

/// @nodoc
mixin _$ImageDataProfile {
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'postId')
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'typeImage')
  TypeImage get typeImage => throw _privateConstructorUsedError;

  /// Serializes this ImageDataProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageDataProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageDataProfileCopyWith<ImageDataProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataProfileCopyWith<$Res> {
  factory $ImageDataProfileCopyWith(
          ImageDataProfile value, $Res Function(ImageDataProfile) then) =
      _$ImageDataProfileCopyWithImpl<$Res, ImageDataProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'path') String path,
      @JsonKey(name: 'postId') String? postId,
      @JsonKey(name: 'typeImage') TypeImage typeImage});

  $TypeImageCopyWith<$Res> get typeImage;
}

/// @nodoc
class _$ImageDataProfileCopyWithImpl<$Res, $Val extends ImageDataProfile>
    implements $ImageDataProfileCopyWith<$Res> {
  _$ImageDataProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDataProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? postId = freezed,
    Object? typeImage = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      typeImage: null == typeImage
          ? _value.typeImage
          : typeImage // ignore: cast_nullable_to_non_nullable
              as TypeImage,
    ) as $Val);
  }

  /// Create a copy of ImageDataProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TypeImageCopyWith<$Res> get typeImage {
    return $TypeImageCopyWith<$Res>(_value.typeImage, (value) {
      return _then(_value.copyWith(typeImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageDataProfileImplCopyWith<$Res>
    implements $ImageDataProfileCopyWith<$Res> {
  factory _$$ImageDataProfileImplCopyWith(_$ImageDataProfileImpl value,
          $Res Function(_$ImageDataProfileImpl) then) =
      __$$ImageDataProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'path') String path,
      @JsonKey(name: 'postId') String? postId,
      @JsonKey(name: 'typeImage') TypeImage typeImage});

  @override
  $TypeImageCopyWith<$Res> get typeImage;
}

/// @nodoc
class __$$ImageDataProfileImplCopyWithImpl<$Res>
    extends _$ImageDataProfileCopyWithImpl<$Res, _$ImageDataProfileImpl>
    implements _$$ImageDataProfileImplCopyWith<$Res> {
  __$$ImageDataProfileImplCopyWithImpl(_$ImageDataProfileImpl _value,
      $Res Function(_$ImageDataProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDataProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? postId = freezed,
    Object? typeImage = null,
  }) {
    return _then(_$ImageDataProfileImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      typeImage: null == typeImage
          ? _value.typeImage
          : typeImage // ignore: cast_nullable_to_non_nullable
              as TypeImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDataProfileImpl implements _ImageDataProfile {
  _$ImageDataProfileImpl(
      {@JsonKey(name: 'path') required this.path,
      @JsonKey(name: 'postId') this.postId,
      @JsonKey(name: 'typeImage') required this.typeImage});

  factory _$ImageDataProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDataProfileImplFromJson(json);

  @override
  @JsonKey(name: 'path')
  final String path;
  @override
  @JsonKey(name: 'postId')
  final String? postId;
  @override
  @JsonKey(name: 'typeImage')
  final TypeImage typeImage;

  @override
  String toString() {
    return 'ImageDataProfile(path: $path, postId: $postId, typeImage: $typeImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataProfileImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.typeImage, typeImage) ||
                other.typeImage == typeImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path, postId, typeImage);

  /// Create a copy of ImageDataProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataProfileImplCopyWith<_$ImageDataProfileImpl> get copyWith =>
      __$$ImageDataProfileImplCopyWithImpl<_$ImageDataProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDataProfileImplToJson(
      this,
    );
  }
}

abstract class _ImageDataProfile implements ImageDataProfile {
  factory _ImageDataProfile(
          {@JsonKey(name: 'path') required final String path,
          @JsonKey(name: 'postId') final String? postId,
          @JsonKey(name: 'typeImage') required final TypeImage typeImage}) =
      _$ImageDataProfileImpl;

  factory _ImageDataProfile.fromJson(Map<String, dynamic> json) =
      _$ImageDataProfileImpl.fromJson;

  @override
  @JsonKey(name: 'path')
  String get path;
  @override
  @JsonKey(name: 'postId')
  String? get postId;
  @override
  @JsonKey(name: 'typeImage')
  TypeImage get typeImage;

  /// Create a copy of ImageDataProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageDataProfileImplCopyWith<_$ImageDataProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
