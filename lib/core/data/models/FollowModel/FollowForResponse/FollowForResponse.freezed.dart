// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'FollowForResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowForResponse _$FollowForResponseFromJson(Map<String, dynamic> json) {
  return _FollowForResponse.fromJson(json);
}

/// @nodoc
mixin _$FollowForResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'senderId')
  String get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender')
  SenderResponse get sender => throw _privateConstructorUsedError;
  @JsonKey(name: 'reciver')
  ReciverResponse get reciver => throw _privateConstructorUsedError;
  @JsonKey(name: 'reciverId')
  String get reciverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updated_at => throw _privateConstructorUsedError;

  /// Serializes this FollowForResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowForResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowForResponseCopyWith<FollowForResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowForResponseCopyWith<$Res> {
  factory $FollowForResponseCopyWith(
          FollowForResponse value, $Res Function(FollowForResponse) then) =
      _$FollowForResponseCopyWithImpl<$Res, FollowForResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'senderId') String senderId,
      @JsonKey(name: 'sender') SenderResponse sender,
      @JsonKey(name: 'reciver') ReciverResponse reciver,
      @JsonKey(name: 'reciverId') String reciverId,
      @JsonKey(name: 'created_at') String created_at,
      @JsonKey(name: 'updated_at') String updated_at});

  $SenderResponseCopyWith<$Res> get sender;
  $ReciverResponseCopyWith<$Res> get reciver;
}

/// @nodoc
class _$FollowForResponseCopyWithImpl<$Res, $Val extends FollowForResponse>
    implements $FollowForResponseCopyWith<$Res> {
  _$FollowForResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowForResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? sender = null,
    Object? reciver = null,
    Object? reciverId = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderResponse,
      reciver: null == reciver
          ? _value.reciver
          : reciver // ignore: cast_nullable_to_non_nullable
              as ReciverResponse,
      reciverId: null == reciverId
          ? _value.reciverId
          : reciverId // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of FollowForResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SenderResponseCopyWith<$Res> get sender {
    return $SenderResponseCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }

  /// Create a copy of FollowForResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReciverResponseCopyWith<$Res> get reciver {
    return $ReciverResponseCopyWith<$Res>(_value.reciver, (value) {
      return _then(_value.copyWith(reciver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FollowForResponseImplCopyWith<$Res>
    implements $FollowForResponseCopyWith<$Res> {
  factory _$$FollowForResponseImplCopyWith(_$FollowForResponseImpl value,
          $Res Function(_$FollowForResponseImpl) then) =
      __$$FollowForResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'senderId') String senderId,
      @JsonKey(name: 'sender') SenderResponse sender,
      @JsonKey(name: 'reciver') ReciverResponse reciver,
      @JsonKey(name: 'reciverId') String reciverId,
      @JsonKey(name: 'created_at') String created_at,
      @JsonKey(name: 'updated_at') String updated_at});

  @override
  $SenderResponseCopyWith<$Res> get sender;
  @override
  $ReciverResponseCopyWith<$Res> get reciver;
}

/// @nodoc
class __$$FollowForResponseImplCopyWithImpl<$Res>
    extends _$FollowForResponseCopyWithImpl<$Res, _$FollowForResponseImpl>
    implements _$$FollowForResponseImplCopyWith<$Res> {
  __$$FollowForResponseImplCopyWithImpl(_$FollowForResponseImpl _value,
      $Res Function(_$FollowForResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowForResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? sender = null,
    Object? reciver = null,
    Object? reciverId = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_$FollowForResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderResponse,
      reciver: null == reciver
          ? _value.reciver
          : reciver // ignore: cast_nullable_to_non_nullable
              as ReciverResponse,
      reciverId: null == reciverId
          ? _value.reciverId
          : reciverId // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowForResponseImpl implements _FollowForResponse {
  _$FollowForResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'senderId') required this.senderId,
      @JsonKey(name: 'sender') required this.sender,
      @JsonKey(name: 'reciver') required this.reciver,
      @JsonKey(name: 'reciverId') required this.reciverId,
      @JsonKey(name: 'created_at') required this.created_at,
      @JsonKey(name: 'updated_at') required this.updated_at});

  factory _$FollowForResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowForResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'senderId')
  final String senderId;
  @override
  @JsonKey(name: 'sender')
  final SenderResponse sender;
  @override
  @JsonKey(name: 'reciver')
  final ReciverResponse reciver;
  @override
  @JsonKey(name: 'reciverId')
  final String reciverId;
  @override
  @JsonKey(name: 'created_at')
  final String created_at;
  @override
  @JsonKey(name: 'updated_at')
  final String updated_at;

  @override
  String toString() {
    return 'FollowForResponse(id: $id, senderId: $senderId, sender: $sender, reciver: $reciver, reciverId: $reciverId, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowForResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.reciver, reciver) || other.reciver == reciver) &&
            (identical(other.reciverId, reciverId) ||
                other.reciverId == reciverId) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderId, sender, reciver,
      reciverId, created_at, updated_at);

  /// Create a copy of FollowForResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowForResponseImplCopyWith<_$FollowForResponseImpl> get copyWith =>
      __$$FollowForResponseImplCopyWithImpl<_$FollowForResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowForResponseImplToJson(
      this,
    );
  }
}

abstract class _FollowForResponse implements FollowForResponse {
  factory _FollowForResponse(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'senderId') required final String senderId,
          @JsonKey(name: 'sender') required final SenderResponse sender,
          @JsonKey(name: 'reciver') required final ReciverResponse reciver,
          @JsonKey(name: 'reciverId') required final String reciverId,
          @JsonKey(name: 'created_at') required final String created_at,
          @JsonKey(name: 'updated_at') required final String updated_at}) =
      _$FollowForResponseImpl;

  factory _FollowForResponse.fromJson(Map<String, dynamic> json) =
      _$FollowForResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'senderId')
  String get senderId;
  @override
  @JsonKey(name: 'sender')
  SenderResponse get sender;
  @override
  @JsonKey(name: 'reciver')
  ReciverResponse get reciver;
  @override
  @JsonKey(name: 'reciverId')
  String get reciverId;
  @override
  @JsonKey(name: 'created_at')
  String get created_at;
  @override
  @JsonKey(name: 'updated_at')
  String get updated_at;

  /// Create a copy of FollowForResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowForResponseImplCopyWith<_$FollowForResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
