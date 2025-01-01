// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CheckRequestFollow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckRequestFollow _$CheckRequestFollowFromJson(Map<String, dynamic> json) {
  return _CheckRequestFollow.fromJson(json);
}

/// @nodoc
mixin _$CheckRequestFollow {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;

  /// Serializes this CheckRequestFollow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckRequestFollow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckRequestFollowCopyWith<CheckRequestFollow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckRequestFollowCopyWith<$Res> {
  factory $CheckRequestFollowCopyWith(
          CheckRequestFollow value, $Res Function(CheckRequestFollow) then) =
      _$CheckRequestFollowCopyWithImpl<$Res, CheckRequestFollow>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'status') int? status});
}

/// @nodoc
class _$CheckRequestFollowCopyWithImpl<$Res, $Val extends CheckRequestFollow>
    implements $CheckRequestFollowCopyWith<$Res> {
  _$CheckRequestFollowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckRequestFollow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckRequestFollowImplCopyWith<$Res>
    implements $CheckRequestFollowCopyWith<$Res> {
  factory _$$CheckRequestFollowImplCopyWith(_$CheckRequestFollowImpl value,
          $Res Function(_$CheckRequestFollowImpl) then) =
      __$$CheckRequestFollowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'status') int? status});
}

/// @nodoc
class __$$CheckRequestFollowImplCopyWithImpl<$Res>
    extends _$CheckRequestFollowCopyWithImpl<$Res, _$CheckRequestFollowImpl>
    implements _$$CheckRequestFollowImplCopyWith<$Res> {
  __$$CheckRequestFollowImplCopyWithImpl(_$CheckRequestFollowImpl _value,
      $Res Function(_$CheckRequestFollowImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckRequestFollow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_$CheckRequestFollowImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckRequestFollowImpl implements _CheckRequestFollow {
  _$CheckRequestFollowImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'status') this.status});

  factory _$CheckRequestFollowImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckRequestFollowImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'status')
  final int? status;

  @override
  String toString() {
    return 'CheckRequestFollow(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckRequestFollowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  /// Create a copy of CheckRequestFollow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckRequestFollowImplCopyWith<_$CheckRequestFollowImpl> get copyWith =>
      __$$CheckRequestFollowImplCopyWithImpl<_$CheckRequestFollowImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckRequestFollowImplToJson(
      this,
    );
  }
}

abstract class _CheckRequestFollow implements CheckRequestFollow {
  factory _CheckRequestFollow(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'status') final int? status}) = _$CheckRequestFollowImpl;

  factory _CheckRequestFollow.fromJson(Map<String, dynamic> json) =
      _$CheckRequestFollowImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'status')
  int? get status;

  /// Create a copy of CheckRequestFollow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckRequestFollowImplCopyWith<_$CheckRequestFollowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
