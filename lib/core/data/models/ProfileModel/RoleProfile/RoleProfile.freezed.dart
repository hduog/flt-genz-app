// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RoleProfile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoleProfile _$RoleProfileFromJson(Map<String, dynamic> json) {
  return _RoleProfile.fromJson(json);
}

/// @nodoc
mixin _$RoleProfile {
  @JsonKey(name: 'nameRole')
  String get nameRole => throw _privateConstructorUsedError;

  /// Serializes this RoleProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleProfileCopyWith<RoleProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleProfileCopyWith<$Res> {
  factory $RoleProfileCopyWith(
          RoleProfile value, $Res Function(RoleProfile) then) =
      _$RoleProfileCopyWithImpl<$Res, RoleProfile>;
  @useResult
  $Res call({@JsonKey(name: 'nameRole') String nameRole});
}

/// @nodoc
class _$RoleProfileCopyWithImpl<$Res, $Val extends RoleProfile>
    implements $RoleProfileCopyWith<$Res> {
  _$RoleProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameRole = null,
  }) {
    return _then(_value.copyWith(
      nameRole: null == nameRole
          ? _value.nameRole
          : nameRole // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleProfileImplCopyWith<$Res>
    implements $RoleProfileCopyWith<$Res> {
  factory _$$RoleProfileImplCopyWith(
          _$RoleProfileImpl value, $Res Function(_$RoleProfileImpl) then) =
      __$$RoleProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'nameRole') String nameRole});
}

/// @nodoc
class __$$RoleProfileImplCopyWithImpl<$Res>
    extends _$RoleProfileCopyWithImpl<$Res, _$RoleProfileImpl>
    implements _$$RoleProfileImplCopyWith<$Res> {
  __$$RoleProfileImplCopyWithImpl(
      _$RoleProfileImpl _value, $Res Function(_$RoleProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoleProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameRole = null,
  }) {
    return _then(_$RoleProfileImpl(
      nameRole: null == nameRole
          ? _value.nameRole
          : nameRole // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleProfileImpl implements _RoleProfile {
  _$RoleProfileImpl({@JsonKey(name: 'nameRole') required this.nameRole});

  factory _$RoleProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleProfileImplFromJson(json);

  @override
  @JsonKey(name: 'nameRole')
  final String nameRole;

  @override
  String toString() {
    return 'RoleProfile(nameRole: $nameRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleProfileImpl &&
            (identical(other.nameRole, nameRole) ||
                other.nameRole == nameRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nameRole);

  /// Create a copy of RoleProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleProfileImplCopyWith<_$RoleProfileImpl> get copyWith =>
      __$$RoleProfileImplCopyWithImpl<_$RoleProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleProfileImplToJson(
      this,
    );
  }
}

abstract class _RoleProfile implements RoleProfile {
  factory _RoleProfile(
          {@JsonKey(name: 'nameRole') required final String nameRole}) =
      _$RoleProfileImpl;

  factory _RoleProfile.fromJson(Map<String, dynamic> json) =
      _$RoleProfileImpl.fromJson;

  @override
  @JsonKey(name: 'nameRole')
  String get nameRole;

  /// Create a copy of RoleProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleProfileImplCopyWith<_$RoleProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
