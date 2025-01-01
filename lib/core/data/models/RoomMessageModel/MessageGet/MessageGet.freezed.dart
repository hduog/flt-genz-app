// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'MessageGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageGet _$MessageGetFromJson(Map<String, dynamic> json) {
  return _MessageGet.fromJson(json);
}

/// @nodoc
mixin _$MessageGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  OwnerRoomGet? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownerId')
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomId')
  String? get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentText')
  String? get contentText => throw _privateConstructorUsedError;

  /// Serializes this MessageGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageGetCopyWith<MessageGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageGetCopyWith<$Res> {
  factory $MessageGetCopyWith(
          MessageGet value, $Res Function(MessageGet) then) =
      _$MessageGetCopyWithImpl<$Res, MessageGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'owner') OwnerRoomGet? owner,
      @JsonKey(name: 'ownerId') String? ownerId,
      @JsonKey(name: 'roomId') String? roomId,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'contentText') String? contentText});

  $OwnerRoomGetCopyWith<$Res>? get owner;
}

/// @nodoc
class _$MessageGetCopyWithImpl<$Res, $Val extends MessageGet>
    implements $MessageGetCopyWith<$Res> {
  _$MessageGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = freezed,
    Object? ownerId = freezed,
    Object? roomId = freezed,
    Object? created_at = freezed,
    Object? contentText = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerRoomGet?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MessageGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerRoomGetCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerRoomGetCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageGetImplCopyWith<$Res>
    implements $MessageGetCopyWith<$Res> {
  factory _$$MessageGetImplCopyWith(
          _$MessageGetImpl value, $Res Function(_$MessageGetImpl) then) =
      __$$MessageGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'owner') OwnerRoomGet? owner,
      @JsonKey(name: 'ownerId') String? ownerId,
      @JsonKey(name: 'roomId') String? roomId,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'contentText') String? contentText});

  @override
  $OwnerRoomGetCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$MessageGetImplCopyWithImpl<$Res>
    extends _$MessageGetCopyWithImpl<$Res, _$MessageGetImpl>
    implements _$$MessageGetImplCopyWith<$Res> {
  __$$MessageGetImplCopyWithImpl(
      _$MessageGetImpl _value, $Res Function(_$MessageGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = freezed,
    Object? ownerId = freezed,
    Object? roomId = freezed,
    Object? created_at = freezed,
    Object? contentText = freezed,
  }) {
    return _then(_$MessageGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerRoomGet?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageGetImpl implements _MessageGet {
  _$MessageGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'owner') this.owner,
      @JsonKey(name: 'ownerId') this.ownerId,
      @JsonKey(name: 'roomId') this.roomId,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'contentText') this.contentText});

  factory _$MessageGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'owner')
  final OwnerRoomGet? owner;
  @override
  @JsonKey(name: 'ownerId')
  final String? ownerId;
  @override
  @JsonKey(name: 'roomId')
  final String? roomId;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'contentText')
  final String? contentText;

  @override
  String toString() {
    return 'MessageGet(id: $id, owner: $owner, ownerId: $ownerId, roomId: $roomId, created_at: $created_at, contentText: $contentText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, owner, ownerId, roomId, created_at, contentText);

  /// Create a copy of MessageGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageGetImplCopyWith<_$MessageGetImpl> get copyWith =>
      __$$MessageGetImplCopyWithImpl<_$MessageGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageGetImplToJson(
      this,
    );
  }
}

abstract class _MessageGet implements MessageGet {
  factory _MessageGet(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'owner') final OwnerRoomGet? owner,
          @JsonKey(name: 'ownerId') final String? ownerId,
          @JsonKey(name: 'roomId') final String? roomId,
          @JsonKey(name: 'created_at') final String? created_at,
          @JsonKey(name: 'contentText') final String? contentText}) =
      _$MessageGetImpl;

  factory _MessageGet.fromJson(Map<String, dynamic> json) =
      _$MessageGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'owner')
  OwnerRoomGet? get owner;
  @override
  @JsonKey(name: 'ownerId')
  String? get ownerId;
  @override
  @JsonKey(name: 'roomId')
  String? get roomId;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'contentText')
  String? get contentText;

  /// Create a copy of MessageGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageGetImplCopyWith<_$MessageGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
