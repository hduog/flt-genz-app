// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ImageForCreatePost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageForCreatePost _$ImageForCreatePostFromJson(Map<String, dynamic> json) {
  return _ImageForCreatePost.fromJson(json);
}

/// @nodoc
mixin _$ImageForCreatePost {
  @JsonKey(name: 'filePath')
  String get filePath => throw _privateConstructorUsedError;

  /// Serializes this ImageForCreatePost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageForCreatePost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageForCreatePostCopyWith<ImageForCreatePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageForCreatePostCopyWith<$Res> {
  factory $ImageForCreatePostCopyWith(
          ImageForCreatePost value, $Res Function(ImageForCreatePost) then) =
      _$ImageForCreatePostCopyWithImpl<$Res, ImageForCreatePost>;
  @useResult
  $Res call({@JsonKey(name: 'filePath') String filePath});
}

/// @nodoc
class _$ImageForCreatePostCopyWithImpl<$Res, $Val extends ImageForCreatePost>
    implements $ImageForCreatePostCopyWith<$Res> {
  _$ImageForCreatePostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageForCreatePost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageForCreatePostImplCopyWith<$Res>
    implements $ImageForCreatePostCopyWith<$Res> {
  factory _$$ImageForCreatePostImplCopyWith(_$ImageForCreatePostImpl value,
          $Res Function(_$ImageForCreatePostImpl) then) =
      __$$ImageForCreatePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'filePath') String filePath});
}

/// @nodoc
class __$$ImageForCreatePostImplCopyWithImpl<$Res>
    extends _$ImageForCreatePostCopyWithImpl<$Res, _$ImageForCreatePostImpl>
    implements _$$ImageForCreatePostImplCopyWith<$Res> {
  __$$ImageForCreatePostImplCopyWithImpl(_$ImageForCreatePostImpl _value,
      $Res Function(_$ImageForCreatePostImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageForCreatePost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$ImageForCreatePostImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageForCreatePostImpl implements _ImageForCreatePost {
  _$ImageForCreatePostImpl({@JsonKey(name: 'filePath') required this.filePath});

  factory _$ImageForCreatePostImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageForCreatePostImplFromJson(json);

  @override
  @JsonKey(name: 'filePath')
  final String filePath;

  @override
  String toString() {
    return 'ImageForCreatePost(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageForCreatePostImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  /// Create a copy of ImageForCreatePost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageForCreatePostImplCopyWith<_$ImageForCreatePostImpl> get copyWith =>
      __$$ImageForCreatePostImplCopyWithImpl<_$ImageForCreatePostImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageForCreatePostImplToJson(
      this,
    );
  }
}

abstract class _ImageForCreatePost implements ImageForCreatePost {
  factory _ImageForCreatePost(
          {@JsonKey(name: 'filePath') required final String filePath}) =
      _$ImageForCreatePostImpl;

  factory _ImageForCreatePost.fromJson(Map<String, dynamic> json) =
      _$ImageForCreatePostImpl.fromJson;

  @override
  @JsonKey(name: 'filePath')
  String get filePath;

  /// Create a copy of ImageForCreatePost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageForCreatePostImplCopyWith<_$ImageForCreatePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
