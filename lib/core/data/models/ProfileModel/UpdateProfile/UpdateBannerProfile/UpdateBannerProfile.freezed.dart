// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UpdateBannerProfile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateBannerProfile _$UpdateBannerProfileFromJson(Map<String, dynamic> json) {
  return _UpdateBannerProfile.fromJson(json);
}

/// @nodoc
mixin _$UpdateBannerProfile {
  @JsonKey(name: 'isDelete')
  bool get isDelete => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;

  /// Serializes this UpdateBannerProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateBannerProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateBannerProfileCopyWith<UpdateBannerProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateBannerProfileCopyWith<$Res> {
  factory $UpdateBannerProfileCopyWith(
          UpdateBannerProfile value, $Res Function(UpdateBannerProfile) then) =
      _$UpdateBannerProfileCopyWithImpl<$Res, UpdateBannerProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isDelete') bool isDelete,
      @JsonKey(name: 'path') String path});
}

/// @nodoc
class _$UpdateBannerProfileCopyWithImpl<$Res, $Val extends UpdateBannerProfile>
    implements $UpdateBannerProfileCopyWith<$Res> {
  _$UpdateBannerProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateBannerProfile
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
abstract class _$$UpdateBannerProfileImplCopyWith<$Res>
    implements $UpdateBannerProfileCopyWith<$Res> {
  factory _$$UpdateBannerProfileImplCopyWith(_$UpdateBannerProfileImpl value,
          $Res Function(_$UpdateBannerProfileImpl) then) =
      __$$UpdateBannerProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isDelete') bool isDelete,
      @JsonKey(name: 'path') String path});
}

/// @nodoc
class __$$UpdateBannerProfileImplCopyWithImpl<$Res>
    extends _$UpdateBannerProfileCopyWithImpl<$Res, _$UpdateBannerProfileImpl>
    implements _$$UpdateBannerProfileImplCopyWith<$Res> {
  __$$UpdateBannerProfileImplCopyWithImpl(_$UpdateBannerProfileImpl _value,
      $Res Function(_$UpdateBannerProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateBannerProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDelete = null,
    Object? path = null,
  }) {
    return _then(_$UpdateBannerProfileImpl(
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
class _$UpdateBannerProfileImpl implements _UpdateBannerProfile {
  _$UpdateBannerProfileImpl(
      {@JsonKey(name: 'isDelete') required this.isDelete,
      @JsonKey(name: 'path') required this.path});

  factory _$UpdateBannerProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateBannerProfileImplFromJson(json);

  @override
  @JsonKey(name: 'isDelete')
  final bool isDelete;
  @override
  @JsonKey(name: 'path')
  final String path;

  @override
  String toString() {
    return 'UpdateBannerProfile(isDelete: $isDelete, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBannerProfileImpl &&
            (identical(other.isDelete, isDelete) ||
                other.isDelete == isDelete) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isDelete, path);

  /// Create a copy of UpdateBannerProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBannerProfileImplCopyWith<_$UpdateBannerProfileImpl> get copyWith =>
      __$$UpdateBannerProfileImplCopyWithImpl<_$UpdateBannerProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateBannerProfileImplToJson(
      this,
    );
  }
}

abstract class _UpdateBannerProfile implements UpdateBannerProfile {
  factory _UpdateBannerProfile(
          {@JsonKey(name: 'isDelete') required final bool isDelete,
          @JsonKey(name: 'path') required final String path}) =
      _$UpdateBannerProfileImpl;

  factory _UpdateBannerProfile.fromJson(Map<String, dynamic> json) =
      _$UpdateBannerProfileImpl.fromJson;

  @override
  @JsonKey(name: 'isDelete')
  bool get isDelete;
  @override
  @JsonKey(name: 'path')
  String get path;

  /// Create a copy of UpdateBannerProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBannerProfileImplCopyWith<_$UpdateBannerProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
