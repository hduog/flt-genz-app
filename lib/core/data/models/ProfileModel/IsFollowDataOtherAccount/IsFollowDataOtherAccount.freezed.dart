// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'IsFollowDataOtherAccount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IsFollowDataOtherAccount _$IsFollowDataOtherAccountFromJson(
    Map<String, dynamic> json) {
  return _IsFollowDataOtherAccount.fromJson(json);
}

/// @nodoc
mixin _$IsFollowDataOtherAccount {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this IsFollowDataOtherAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IsFollowDataOtherAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IsFollowDataOtherAccountCopyWith<IsFollowDataOtherAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsFollowDataOtherAccountCopyWith<$Res> {
  factory $IsFollowDataOtherAccountCopyWith(IsFollowDataOtherAccount value,
          $Res Function(IsFollowDataOtherAccount) then) =
      _$IsFollowDataOtherAccountCopyWithImpl<$Res, IsFollowDataOtherAccount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$IsFollowDataOtherAccountCopyWithImpl<$Res,
        $Val extends IsFollowDataOtherAccount>
    implements $IsFollowDataOtherAccountCopyWith<$Res> {
  _$IsFollowDataOtherAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IsFollowDataOtherAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IsFollowDataOtherAccountImplCopyWith<$Res>
    implements $IsFollowDataOtherAccountCopyWith<$Res> {
  factory _$$IsFollowDataOtherAccountImplCopyWith(
          _$IsFollowDataOtherAccountImpl value,
          $Res Function(_$IsFollowDataOtherAccountImpl) then) =
      __$$IsFollowDataOtherAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$IsFollowDataOtherAccountImplCopyWithImpl<$Res>
    extends _$IsFollowDataOtherAccountCopyWithImpl<$Res,
        _$IsFollowDataOtherAccountImpl>
    implements _$$IsFollowDataOtherAccountImplCopyWith<$Res> {
  __$$IsFollowDataOtherAccountImplCopyWithImpl(
      _$IsFollowDataOtherAccountImpl _value,
      $Res Function(_$IsFollowDataOtherAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsFollowDataOtherAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$IsFollowDataOtherAccountImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IsFollowDataOtherAccountImpl implements _IsFollowDataOtherAccount {
  _$IsFollowDataOtherAccountImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message});

  factory _$IsFollowDataOtherAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$IsFollowDataOtherAccountImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'IsFollowDataOtherAccount(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsFollowDataOtherAccountImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of IsFollowDataOtherAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsFollowDataOtherAccountImplCopyWith<_$IsFollowDataOtherAccountImpl>
      get copyWith => __$$IsFollowDataOtherAccountImplCopyWithImpl<
          _$IsFollowDataOtherAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IsFollowDataOtherAccountImplToJson(
      this,
    );
  }
}

abstract class _IsFollowDataOtherAccount implements IsFollowDataOtherAccount {
  factory _IsFollowDataOtherAccount(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message}) =
      _$IsFollowDataOtherAccountImpl;

  factory _IsFollowDataOtherAccount.fromJson(Map<String, dynamic> json) =
      _$IsFollowDataOtherAccountImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of IsFollowDataOtherAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsFollowDataOtherAccountImplCopyWith<_$IsFollowDataOtherAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}
