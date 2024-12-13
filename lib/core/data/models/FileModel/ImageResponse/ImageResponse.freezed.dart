// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ImageResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) {
  return _ImageResponse.fromJson(json);
}

/// @nodoc
mixin _$ImageResponse {
  @JsonKey(name: 'fieldname')
  String get fieldname => throw _privateConstructorUsedError;
  @JsonKey(name: 'filename')
  String get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'mimetype')
  String get mimetype => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalname')
  String get originalname => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  String get size => throw _privateConstructorUsedError;

  /// Serializes this ImageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageResponseCopyWith<ImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResponseCopyWith<$Res> {
  factory $ImageResponseCopyWith(
          ImageResponse value, $Res Function(ImageResponse) then) =
      _$ImageResponseCopyWithImpl<$Res, ImageResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'filename') String filename,
      @JsonKey(name: 'mimetype') String mimetype,
      @JsonKey(name: 'originalname') String originalname,
      @JsonKey(name: 'size') String size});
}

/// @nodoc
class _$ImageResponseCopyWithImpl<$Res, $Val extends ImageResponse>
    implements $ImageResponseCopyWith<$Res> {
  _$ImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldname = null,
    Object? filename = null,
    Object? mimetype = null,
    Object? originalname = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      fieldname: null == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      mimetype: null == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String,
      originalname: null == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageResponseImplCopyWith<$Res>
    implements $ImageResponseCopyWith<$Res> {
  factory _$$ImageResponseImplCopyWith(
          _$ImageResponseImpl value, $Res Function(_$ImageResponseImpl) then) =
      __$$ImageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fieldname') String fieldname,
      @JsonKey(name: 'filename') String filename,
      @JsonKey(name: 'mimetype') String mimetype,
      @JsonKey(name: 'originalname') String originalname,
      @JsonKey(name: 'size') String size});
}

/// @nodoc
class __$$ImageResponseImplCopyWithImpl<$Res>
    extends _$ImageResponseCopyWithImpl<$Res, _$ImageResponseImpl>
    implements _$$ImageResponseImplCopyWith<$Res> {
  __$$ImageResponseImplCopyWithImpl(
      _$ImageResponseImpl _value, $Res Function(_$ImageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldname = null,
    Object? filename = null,
    Object? mimetype = null,
    Object? originalname = null,
    Object? size = null,
  }) {
    return _then(_$ImageResponseImpl(
      fieldname: null == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      mimetype: null == mimetype
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String,
      originalname: null == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageResponseImpl implements _ImageResponse {
  _$ImageResponseImpl(
      {@JsonKey(name: 'fieldname') required this.fieldname,
      @JsonKey(name: 'filename') required this.filename,
      @JsonKey(name: 'mimetype') required this.mimetype,
      @JsonKey(name: 'originalname') required this.originalname,
      @JsonKey(name: 'size') required this.size});

  factory _$ImageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageResponseImplFromJson(json);

  @override
  @JsonKey(name: 'fieldname')
  final String fieldname;
  @override
  @JsonKey(name: 'filename')
  final String filename;
  @override
  @JsonKey(name: 'mimetype')
  final String mimetype;
  @override
  @JsonKey(name: 'originalname')
  final String originalname;
  @override
  @JsonKey(name: 'size')
  final String size;

  @override
  String toString() {
    return 'ImageResponse(fieldname: $fieldname, filename: $filename, mimetype: $mimetype, originalname: $originalname, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageResponseImpl &&
            (identical(other.fieldname, fieldname) ||
                other.fieldname == fieldname) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.mimetype, mimetype) ||
                other.mimetype == mimetype) &&
            (identical(other.originalname, originalname) ||
                other.originalname == originalname) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fieldname, filename, mimetype, originalname, size);

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageResponseImplCopyWith<_$ImageResponseImpl> get copyWith =>
      __$$ImageResponseImplCopyWithImpl<_$ImageResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageResponseImplToJson(
      this,
    );
  }
}

abstract class _ImageResponse implements ImageResponse {
  factory _ImageResponse(
      {@JsonKey(name: 'fieldname') required final String fieldname,
      @JsonKey(name: 'filename') required final String filename,
      @JsonKey(name: 'mimetype') required final String mimetype,
      @JsonKey(name: 'originalname') required final String originalname,
      @JsonKey(name: 'size') required final String size}) = _$ImageResponseImpl;

  factory _ImageResponse.fromJson(Map<String, dynamic> json) =
      _$ImageResponseImpl.fromJson;

  @override
  @JsonKey(name: 'fieldname')
  String get fieldname;
  @override
  @JsonKey(name: 'filename')
  String get filename;
  @override
  @JsonKey(name: 'mimetype')
  String get mimetype;
  @override
  @JsonKey(name: 'originalname')
  String get originalname;
  @override
  @JsonKey(name: 'size')
  String get size;

  /// Create a copy of ImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageResponseImplCopyWith<_$ImageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
