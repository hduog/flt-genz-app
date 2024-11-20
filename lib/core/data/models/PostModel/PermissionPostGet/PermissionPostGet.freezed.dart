// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PermissionPostGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PermissionPostGet _$PermissionPostGetFromJson(Map<String, dynamic> json) {
  return _PermissionPostGet.fromJson(json);
}

/// @nodoc
mixin _$PermissionPostGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this PermissionPostGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PermissionPostGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionPostGetCopyWith<PermissionPostGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionPostGetCopyWith<$Res> {
  factory $PermissionPostGetCopyWith(
          PermissionPostGet value, $Res Function(PermissionPostGet) then) =
      _$PermissionPostGetCopyWithImpl<$Res, PermissionPostGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'code') String? code});
}

/// @nodoc
class _$PermissionPostGetCopyWithImpl<$Res, $Val extends PermissionPostGet>
    implements $PermissionPostGetCopyWith<$Res> {
  _$PermissionPostGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionPostGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionPostGetImplCopyWith<$Res>
    implements $PermissionPostGetCopyWith<$Res> {
  factory _$$PermissionPostGetImplCopyWith(_$PermissionPostGetImpl value,
          $Res Function(_$PermissionPostGetImpl) then) =
      __$$PermissionPostGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'code') String? code});
}

/// @nodoc
class __$$PermissionPostGetImplCopyWithImpl<$Res>
    extends _$PermissionPostGetCopyWithImpl<$Res, _$PermissionPostGetImpl>
    implements _$$PermissionPostGetImplCopyWith<$Res> {
  __$$PermissionPostGetImplCopyWithImpl(_$PermissionPostGetImpl _value,
      $Res Function(_$PermissionPostGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionPostGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? code = freezed,
  }) {
    return _then(_$PermissionPostGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionPostGetImpl implements _PermissionPostGet {
  _$PermissionPostGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'code') this.code});

  factory _$PermissionPostGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionPostGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'code')
  final String? code;

  @override
  String toString() {
    return 'PermissionPostGet(id: $id, description: $description, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionPostGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, code);

  /// Create a copy of PermissionPostGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionPostGetImplCopyWith<_$PermissionPostGetImpl> get copyWith =>
      __$$PermissionPostGetImplCopyWithImpl<_$PermissionPostGetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionPostGetImplToJson(
      this,
    );
  }
}

abstract class _PermissionPostGet implements PermissionPostGet {
  factory _PermissionPostGet(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'code') final String? code}) = _$PermissionPostGetImpl;

  factory _PermissionPostGet.fromJson(Map<String, dynamic> json) =
      _$PermissionPostGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'code')
  String? get code;

  /// Create a copy of PermissionPostGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionPostGetImplCopyWith<_$PermissionPostGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
