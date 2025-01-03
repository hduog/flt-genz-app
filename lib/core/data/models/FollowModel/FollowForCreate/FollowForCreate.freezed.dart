// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'FollowForCreate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowForCreate _$FollowForCreateFromJson(Map<String, dynamic> json) {
  return _FollowForCreate.fromJson(json);
}

/// @nodoc
mixin _$FollowForCreate {
  @JsonKey(name: 'senderId')
  String get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reciverId')
  String get reciverId => throw _privateConstructorUsedError;

  /// Serializes this FollowForCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowForCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowForCreateCopyWith<FollowForCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowForCreateCopyWith<$Res> {
  factory $FollowForCreateCopyWith(
          FollowForCreate value, $Res Function(FollowForCreate) then) =
      _$FollowForCreateCopyWithImpl<$Res, FollowForCreate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'senderId') String senderId,
      @JsonKey(name: 'reciverId') String reciverId});
}

/// @nodoc
class _$FollowForCreateCopyWithImpl<$Res, $Val extends FollowForCreate>
    implements $FollowForCreateCopyWith<$Res> {
  _$FollowForCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowForCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? reciverId = null,
  }) {
    return _then(_value.copyWith(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      reciverId: null == reciverId
          ? _value.reciverId
          : reciverId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowForCreateImplCopyWith<$Res>
    implements $FollowForCreateCopyWith<$Res> {
  factory _$$FollowForCreateImplCopyWith(_$FollowForCreateImpl value,
          $Res Function(_$FollowForCreateImpl) then) =
      __$$FollowForCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'senderId') String senderId,
      @JsonKey(name: 'reciverId') String reciverId});
}

/// @nodoc
class __$$FollowForCreateImplCopyWithImpl<$Res>
    extends _$FollowForCreateCopyWithImpl<$Res, _$FollowForCreateImpl>
    implements _$$FollowForCreateImplCopyWith<$Res> {
  __$$FollowForCreateImplCopyWithImpl(
      _$FollowForCreateImpl _value, $Res Function(_$FollowForCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowForCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? reciverId = null,
  }) {
    return _then(_$FollowForCreateImpl(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      reciverId: null == reciverId
          ? _value.reciverId
          : reciverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowForCreateImpl implements _FollowForCreate {
  _$FollowForCreateImpl(
      {@JsonKey(name: 'senderId') required this.senderId,
      @JsonKey(name: 'reciverId') required this.reciverId});

  factory _$FollowForCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowForCreateImplFromJson(json);

  @override
  @JsonKey(name: 'senderId')
  final String senderId;
  @override
  @JsonKey(name: 'reciverId')
  final String reciverId;

  @override
  String toString() {
    return 'FollowForCreate(senderId: $senderId, reciverId: $reciverId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowForCreateImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.reciverId, reciverId) ||
                other.reciverId == reciverId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, senderId, reciverId);

  /// Create a copy of FollowForCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowForCreateImplCopyWith<_$FollowForCreateImpl> get copyWith =>
      __$$FollowForCreateImplCopyWithImpl<_$FollowForCreateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowForCreateImplToJson(
      this,
    );
  }
}

abstract class _FollowForCreate implements FollowForCreate {
  factory _FollowForCreate(
          {@JsonKey(name: 'senderId') required final String senderId,
          @JsonKey(name: 'reciverId') required final String reciverId}) =
      _$FollowForCreateImpl;

  factory _FollowForCreate.fromJson(Map<String, dynamic> json) =
      _$FollowForCreateImpl.fromJson;

  @override
  @JsonKey(name: 'senderId')
  String get senderId;
  @override
  @JsonKey(name: 'reciverId')
  String get reciverId;

  /// Create a copy of FollowForCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowForCreateImplCopyWith<_$FollowForCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
