// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TypeImage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TypeImage _$TypeImageFromJson(Map<String, dynamic> json) {
  return _TypeImage.fromJson(json);
}

/// @nodoc
mixin _$TypeImage {
  @JsonKey(name: 'typeImageName')
  String get typeImageName => throw _privateConstructorUsedError;

  /// Serializes this TypeImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeImageCopyWith<TypeImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeImageCopyWith<$Res> {
  factory $TypeImageCopyWith(TypeImage value, $Res Function(TypeImage) then) =
      _$TypeImageCopyWithImpl<$Res, TypeImage>;
  @useResult
  $Res call({@JsonKey(name: 'typeImageName') String typeImageName});
}

/// @nodoc
class _$TypeImageCopyWithImpl<$Res, $Val extends TypeImage>
    implements $TypeImageCopyWith<$Res> {
  _$TypeImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeImageName = null,
  }) {
    return _then(_value.copyWith(
      typeImageName: null == typeImageName
          ? _value.typeImageName
          : typeImageName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeImageImplCopyWith<$Res>
    implements $TypeImageCopyWith<$Res> {
  factory _$$TypeImageImplCopyWith(
          _$TypeImageImpl value, $Res Function(_$TypeImageImpl) then) =
      __$$TypeImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'typeImageName') String typeImageName});
}

/// @nodoc
class __$$TypeImageImplCopyWithImpl<$Res>
    extends _$TypeImageCopyWithImpl<$Res, _$TypeImageImpl>
    implements _$$TypeImageImplCopyWith<$Res> {
  __$$TypeImageImplCopyWithImpl(
      _$TypeImageImpl _value, $Res Function(_$TypeImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeImageName = null,
  }) {
    return _then(_$TypeImageImpl(
      typeImageName: null == typeImageName
          ? _value.typeImageName
          : typeImageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeImageImpl implements _TypeImage {
  _$TypeImageImpl(
      {@JsonKey(name: 'typeImageName') required this.typeImageName});

  factory _$TypeImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeImageImplFromJson(json);

  @override
  @JsonKey(name: 'typeImageName')
  final String typeImageName;

  @override
  String toString() {
    return 'TypeImage(typeImageName: $typeImageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeImageImpl &&
            (identical(other.typeImageName, typeImageName) ||
                other.typeImageName == typeImageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, typeImageName);

  /// Create a copy of TypeImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeImageImplCopyWith<_$TypeImageImpl> get copyWith =>
      __$$TypeImageImplCopyWithImpl<_$TypeImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeImageImplToJson(
      this,
    );
  }
}

abstract class _TypeImage implements TypeImage {
  factory _TypeImage(
      {@JsonKey(name: 'typeImageName')
      required final String typeImageName}) = _$TypeImageImpl;

  factory _TypeImage.fromJson(Map<String, dynamic> json) =
      _$TypeImageImpl.fromJson;

  @override
  @JsonKey(name: 'typeImageName')
  String get typeImageName;

  /// Create a copy of TypeImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeImageImplCopyWith<_$TypeImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
