// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UpdateAvatarProfile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateAvatarProfile _$UpdateAvatarProfileFromJson(Map<String, dynamic> json) {
  return _UpdateAvatarProfile.fromJson(json);
}

/// @nodoc
mixin _$UpdateAvatarProfile {
  @JsonKey(name: 'isDelete')
  bool get isDelete => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;

  /// Serializes this UpdateAvatarProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAvatarProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAvatarProfileCopyWith<UpdateAvatarProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAvatarProfileCopyWith<$Res> {
  factory $UpdateAvatarProfileCopyWith(
          UpdateAvatarProfile value, $Res Function(UpdateAvatarProfile) then) =
      _$UpdateAvatarProfileCopyWithImpl<$Res, UpdateAvatarProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isDelete') bool isDelete,
      @JsonKey(name: 'path') String path});
}

/// @nodoc
class _$UpdateAvatarProfileCopyWithImpl<$Res, $Val extends UpdateAvatarProfile>
    implements $UpdateAvatarProfileCopyWith<$Res> {
  _$UpdateAvatarProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAvatarProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDelete = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAvatarProfileImplCopyWith<$Res>
    implements $UpdateAvatarProfileCopyWith<$Res> {
  factory _$$UpdateAvatarProfileImplCopyWith(_$UpdateAvatarProfileImpl value,
          $Res Function(_$UpdateAvatarProfileImpl) then) =
      __$$UpdateAvatarProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isDelete') bool isDelete,
      @JsonKey(name: 'path') String path});
}

/// @nodoc
class __$$UpdateAvatarProfileImplCopyWithImpl<$Res>
    extends _$UpdateAvatarProfileCopyWithImpl<$Res, _$UpdateAvatarProfileImpl>
    implements _$$UpdateAvatarProfileImplCopyWith<$Res> {
  __$$UpdateAvatarProfileImplCopyWithImpl(_$UpdateAvatarProfileImpl _value,
      $Res Function(_$UpdateAvatarProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateAvatarProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDelete = null,
    Object? path = null,
  }) {
    return _then(_$UpdateAvatarProfileImpl(
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAvatarProfileImpl implements _UpdateAvatarProfile {
  _$UpdateAvatarProfileImpl(
      {@JsonKey(name: 'isDelete') required this.isDelete,
      @JsonKey(name: 'path') required this.path});

  factory _$UpdateAvatarProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAvatarProfileImplFromJson(json);

  @override
  @JsonKey(name: 'isDelete')
  final bool isDelete;
  @override
  @JsonKey(name: 'path')
  final String path;

  @override
  String toString() {
    return 'UpdateAvatarProfile(isDelete: $isDelete, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAvatarProfileImpl &&
            (identical(other.isDelete, isDelete) ||
                other.isDelete == isDelete) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isDelete, path);

  /// Create a copy of UpdateAvatarProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAvatarProfileImplCopyWith<_$UpdateAvatarProfileImpl> get copyWith =>
      __$$UpdateAvatarProfileImplCopyWithImpl<_$UpdateAvatarProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAvatarProfileImplToJson(
      this,
    );
  }
}

abstract class _UpdateAvatarProfile implements UpdateAvatarProfile {
  factory _UpdateAvatarProfile(
          {@JsonKey(name: 'isDelete') required final bool isDelete,
          @JsonKey(name: 'path') required final String path}) =
      _$UpdateAvatarProfileImpl;

  factory _UpdateAvatarProfile.fromJson(Map<String, dynamic> json) =
      _$UpdateAvatarProfileImpl.fromJson;

  @override
  @JsonKey(name: 'isDelete')
  bool get isDelete;
  @override
  @JsonKey(name: 'path')
  String get path;

  /// Create a copy of UpdateAvatarProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAvatarProfileImplCopyWith<_$UpdateAvatarProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
