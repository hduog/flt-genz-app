// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RoomMessageForGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomMessageForGet _$RoomMessageForGetFromJson(Map<String, dynamic> json) {
  return _RoomMessageForGet.fromJson(json);
}

/// @nodoc
mixin _$RoomMessageForGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updated_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'accountInRoom')
  List<BasicInfoGet> get accountInRoom => throw _privateConstructorUsedError;
  @JsonKey(name: 'nameRoom')
  String? get nameRoom => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessage')
  String? get lastMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessageTime')
  String? get lastMessageTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSeen')
  bool? get isSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'idLastSendingUser')
  String? get idLastSendingUser => throw _privateConstructorUsedError;

  /// Serializes this RoomMessageForGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomMessageForGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomMessageForGetCopyWith<RoomMessageForGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomMessageForGetCopyWith<$Res> {
  factory $RoomMessageForGetCopyWith(
          RoomMessageForGet value, $Res Function(RoomMessageForGet) then) =
      _$RoomMessageForGetCopyWithImpl<$Res, RoomMessageForGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'updated_at') String? updated_at,
      @JsonKey(name: 'accountInRoom') List<BasicInfoGet> accountInRoom,
      @JsonKey(name: 'nameRoom') String? nameRoom,
      @JsonKey(name: 'lastMessage') String? lastMessage,
      @JsonKey(name: 'lastMessageTime') String? lastMessageTime,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'isSeen') bool? isSeen,
      @JsonKey(name: 'idLastSendingUser') String? idLastSendingUser});
}

/// @nodoc
class _$RoomMessageForGetCopyWithImpl<$Res, $Val extends RoomMessageForGet>
    implements $RoomMessageForGetCopyWith<$Res> {
  _$RoomMessageForGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomMessageForGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? accountInRoom = null,
    Object? nameRoom = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageTime = freezed,
    Object? avatar = freezed,
    Object? isSeen = freezed,
    Object? idLastSendingUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      accountInRoom: null == accountInRoom
          ? _value.accountInRoom
          : accountInRoom // ignore: cast_nullable_to_non_nullable
              as List<BasicInfoGet>,
      nameRoom: freezed == nameRoom
          ? _value.nameRoom
          : nameRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTime: freezed == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      idLastSendingUser: freezed == idLastSendingUser
          ? _value.idLastSendingUser
          : idLastSendingUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomMessageForGetImplCopyWith<$Res>
    implements $RoomMessageForGetCopyWith<$Res> {
  factory _$$RoomMessageForGetImplCopyWith(_$RoomMessageForGetImpl value,
          $Res Function(_$RoomMessageForGetImpl) then) =
      __$$RoomMessageForGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'updated_at') String? updated_at,
      @JsonKey(name: 'accountInRoom') List<BasicInfoGet> accountInRoom,
      @JsonKey(name: 'nameRoom') String? nameRoom,
      @JsonKey(name: 'lastMessage') String? lastMessage,
      @JsonKey(name: 'lastMessageTime') String? lastMessageTime,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'isSeen') bool? isSeen,
      @JsonKey(name: 'idLastSendingUser') String? idLastSendingUser});
}

/// @nodoc
class __$$RoomMessageForGetImplCopyWithImpl<$Res>
    extends _$RoomMessageForGetCopyWithImpl<$Res, _$RoomMessageForGetImpl>
    implements _$$RoomMessageForGetImplCopyWith<$Res> {
  __$$RoomMessageForGetImplCopyWithImpl(_$RoomMessageForGetImpl _value,
      $Res Function(_$RoomMessageForGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomMessageForGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? accountInRoom = null,
    Object? nameRoom = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageTime = freezed,
    Object? avatar = freezed,
    Object? isSeen = freezed,
    Object? idLastSendingUser = freezed,
  }) {
    return _then(_$RoomMessageForGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      accountInRoom: null == accountInRoom
          ? _value._accountInRoom
          : accountInRoom // ignore: cast_nullable_to_non_nullable
              as List<BasicInfoGet>,
      nameRoom: freezed == nameRoom
          ? _value.nameRoom
          : nameRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTime: freezed == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      idLastSendingUser: freezed == idLastSendingUser
          ? _value.idLastSendingUser
          : idLastSendingUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomMessageForGetImpl implements _RoomMessageForGet {
  _$RoomMessageForGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'updated_at') this.updated_at,
      @JsonKey(name: 'accountInRoom')
      required final List<BasicInfoGet> accountInRoom,
      @JsonKey(name: 'nameRoom') this.nameRoom,
      @JsonKey(name: 'lastMessage') this.lastMessage,
      @JsonKey(name: 'lastMessageTime') this.lastMessageTime,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'isSeen') this.isSeen,
      @JsonKey(name: 'idLastSendingUser') this.idLastSendingUser})
      : _accountInRoom = accountInRoom;

  factory _$RoomMessageForGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomMessageForGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'updated_at')
  final String? updated_at;
  final List<BasicInfoGet> _accountInRoom;
  @override
  @JsonKey(name: 'accountInRoom')
  List<BasicInfoGet> get accountInRoom {
    if (_accountInRoom is EqualUnmodifiableListView) return _accountInRoom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountInRoom);
  }

  @override
  @JsonKey(name: 'nameRoom')
  final String? nameRoom;
  @override
  @JsonKey(name: 'lastMessage')
  final String? lastMessage;
  @override
  @JsonKey(name: 'lastMessageTime')
  final String? lastMessageTime;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'isSeen')
  final bool? isSeen;
  @override
  @JsonKey(name: 'idLastSendingUser')
  final String? idLastSendingUser;

  @override
  String toString() {
    return 'RoomMessageForGet(id: $id, created_at: $created_at, updated_at: $updated_at, accountInRoom: $accountInRoom, nameRoom: $nameRoom, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, avatar: $avatar, isSeen: $isSeen, idLastSendingUser: $idLastSendingUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomMessageForGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            const DeepCollectionEquality()
                .equals(other._accountInRoom, _accountInRoom) &&
            (identical(other.nameRoom, nameRoom) ||
                other.nameRoom == nameRoom) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageTime, lastMessageTime) ||
                other.lastMessageTime == lastMessageTime) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen) &&
            (identical(other.idLastSendingUser, idLastSendingUser) ||
                other.idLastSendingUser == idLastSendingUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created_at,
      updated_at,
      const DeepCollectionEquality().hash(_accountInRoom),
      nameRoom,
      lastMessage,
      lastMessageTime,
      avatar,
      isSeen,
      idLastSendingUser);

  /// Create a copy of RoomMessageForGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomMessageForGetImplCopyWith<_$RoomMessageForGetImpl> get copyWith =>
      __$$RoomMessageForGetImplCopyWithImpl<_$RoomMessageForGetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomMessageForGetImplToJson(
      this,
    );
  }
}

abstract class _RoomMessageForGet implements RoomMessageForGet {
  factory _RoomMessageForGet(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'created_at') final String? created_at,
      @JsonKey(name: 'updated_at') final String? updated_at,
      @JsonKey(name: 'accountInRoom')
      required final List<BasicInfoGet> accountInRoom,
      @JsonKey(name: 'nameRoom') final String? nameRoom,
      @JsonKey(name: 'lastMessage') final String? lastMessage,
      @JsonKey(name: 'lastMessageTime') final String? lastMessageTime,
      @JsonKey(name: 'avatar') final String? avatar,
      @JsonKey(name: 'isSeen') final bool? isSeen,
      @JsonKey(name: 'idLastSendingUser')
      final String? idLastSendingUser}) = _$RoomMessageForGetImpl;

  factory _RoomMessageForGet.fromJson(Map<String, dynamic> json) =
      _$RoomMessageForGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'updated_at')
  String? get updated_at;
  @override
  @JsonKey(name: 'accountInRoom')
  List<BasicInfoGet> get accountInRoom;
  @override
  @JsonKey(name: 'nameRoom')
  String? get nameRoom;
  @override
  @JsonKey(name: 'lastMessage')
  String? get lastMessage;
  @override
  @JsonKey(name: 'lastMessageTime')
  String? get lastMessageTime;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'isSeen')
  bool? get isSeen;
  @override
  @JsonKey(name: 'idLastSendingUser')
  String? get idLastSendingUser;

  /// Create a copy of RoomMessageForGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomMessageForGetImplCopyWith<_$RoomMessageForGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
