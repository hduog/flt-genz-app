// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ImageSearchResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageSearchResponse _$ImageSearchResponseFromJson(Map<String, dynamic> json) {
  return _ImageSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$ImageSearchResponse {
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;

  /// Serializes this ImageSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageSearchResponseCopyWith<ImageSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSearchResponseCopyWith<$Res> {
  factory $ImageSearchResponseCopyWith(
          ImageSearchResponse value, $Res Function(ImageSearchResponse) then) =
      _$ImageSearchResponseCopyWithImpl<$Res, ImageSearchResponse>;
  @useResult
  $Res call({@JsonKey(name: 'path') String path});
}

/// @nodoc
class _$ImageSearchResponseCopyWithImpl<$Res, $Val extends ImageSearchResponse>
    implements $ImageSearchResponseCopyWith<$Res> {
  _$ImageSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageSearchResponseImplCopyWith<$Res>
    implements $ImageSearchResponseCopyWith<$Res> {
  factory _$$ImageSearchResponseImplCopyWith(_$ImageSearchResponseImpl value,
          $Res Function(_$ImageSearchResponseImpl) then) =
      __$$ImageSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'path') String path});
}

/// @nodoc
class __$$ImageSearchResponseImplCopyWithImpl<$Res>
    extends _$ImageSearchResponseCopyWithImpl<$Res, _$ImageSearchResponseImpl>
    implements _$$ImageSearchResponseImplCopyWith<$Res> {
  __$$ImageSearchResponseImplCopyWithImpl(_$ImageSearchResponseImpl _value,
      $Res Function(_$ImageSearchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ImageSearchResponseImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageSearchResponseImpl implements _ImageSearchResponse {
  _$ImageSearchResponseImpl({@JsonKey(name: 'path') required this.path});

  factory _$ImageSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageSearchResponseImplFromJson(json);

  @override
  @JsonKey(name: 'path')
  final String path;

  @override
  String toString() {
    return 'ImageSearchResponse(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSearchResponseImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSearchResponseImplCopyWith<_$ImageSearchResponseImpl> get copyWith =>
      __$$ImageSearchResponseImplCopyWithImpl<_$ImageSearchResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _ImageSearchResponse implements ImageSearchResponse {
  factory _ImageSearchResponse(
          {@JsonKey(name: 'path') required final String path}) =
      _$ImageSearchResponseImpl;

  factory _ImageSearchResponse.fromJson(Map<String, dynamic> json) =
      _$ImageSearchResponseImpl.fromJson;

  @override
  @JsonKey(name: 'path')
  String get path;

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSearchResponseImplCopyWith<_$ImageSearchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
