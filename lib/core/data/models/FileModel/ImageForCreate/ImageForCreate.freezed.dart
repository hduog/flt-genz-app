// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ImageForCreate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageForCreate _$ImageForCreateFromJson(Map<String, dynamic> json) {
  return _ImageForCreate.fromJson(json);
}

/// @nodoc
mixin _$ImageForCreate {
  @JsonKey(name: 'filePath')
  String get filePath => throw _privateConstructorUsedError;

  /// Serializes this ImageForCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageForCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageForCreateCopyWith<ImageForCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageForCreateCopyWith<$Res> {
  factory $ImageForCreateCopyWith(
          ImageForCreate value, $Res Function(ImageForCreate) then) =
      _$ImageForCreateCopyWithImpl<$Res, ImageForCreate>;
  @useResult
  $Res call({@JsonKey(name: 'filePath') String filePath});
}

/// @nodoc
class _$ImageForCreateCopyWithImpl<$Res, $Val extends ImageForCreate>
    implements $ImageForCreateCopyWith<$Res> {
  _$ImageForCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageForCreate
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
abstract class _$$ImageForCreateImplCopyWith<$Res>
    implements $ImageForCreateCopyWith<$Res> {
  factory _$$ImageForCreateImplCopyWith(_$ImageForCreateImpl value,
          $Res Function(_$ImageForCreateImpl) then) =
      __$$ImageForCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'filePath') String filePath});
}

/// @nodoc
class __$$ImageForCreateImplCopyWithImpl<$Res>
    extends _$ImageForCreateCopyWithImpl<$Res, _$ImageForCreateImpl>
    implements _$$ImageForCreateImplCopyWith<$Res> {
  __$$ImageForCreateImplCopyWithImpl(
      _$ImageForCreateImpl _value, $Res Function(_$ImageForCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageForCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$ImageForCreateImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageForCreateImpl implements _ImageForCreate {
  _$ImageForCreateImpl({@JsonKey(name: 'filePath') required this.filePath});

  factory _$ImageForCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageForCreateImplFromJson(json);

  @override
  @JsonKey(name: 'filePath')
  final String filePath;

  @override
  String toString() {
    return 'ImageForCreate(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageForCreateImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  /// Create a copy of ImageForCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageForCreateImplCopyWith<_$ImageForCreateImpl> get copyWith =>
      __$$ImageForCreateImplCopyWithImpl<_$ImageForCreateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageForCreateImplToJson(
      this,
    );
  }
}

abstract class _ImageForCreate implements ImageForCreate {
  factory _ImageForCreate(
          {@JsonKey(name: 'filePath') required final String filePath}) =
      _$ImageForCreateImpl;

  factory _ImageForCreate.fromJson(Map<String, dynamic> json) =
      _$ImageForCreateImpl.fromJson;

  @override
  @JsonKey(name: 'filePath')
  String get filePath;

  /// Create a copy of ImageForCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageForCreateImplCopyWith<_$ImageForCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
