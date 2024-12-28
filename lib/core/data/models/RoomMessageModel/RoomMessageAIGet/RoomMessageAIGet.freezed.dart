// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RoomMessageAIGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomMessageAIGet _$RoomMessageAIGetFromJson(Map<String, dynamic> json) {
  return _RoomMessageAIGet.fromJson(json);
}

/// @nodoc
mixin _$RoomMessageAIGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'nameRoom')
  String get nameRoom => throw _privateConstructorUsedError;

  /// Serializes this RoomMessageAIGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomMessageAIGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomMessageAIGetCopyWith<RoomMessageAIGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomMessageAIGetCopyWith<$Res> {
  factory $RoomMessageAIGetCopyWith(
          RoomMessageAIGet value, $Res Function(RoomMessageAIGet) then) =
      _$RoomMessageAIGetCopyWithImpl<$Res, RoomMessageAIGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'created_at') String created_at,
      @JsonKey(name: 'nameRoom') String nameRoom});
}

/// @nodoc
class _$RoomMessageAIGetCopyWithImpl<$Res, $Val extends RoomMessageAIGet>
    implements $RoomMessageAIGetCopyWith<$Res> {
  _$RoomMessageAIGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomMessageAIGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? nameRoom = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      nameRoom: null == nameRoom
          ? _value.nameRoom
          : nameRoom // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomMessageAIGetImplCopyWith<$Res>
    implements $RoomMessageAIGetCopyWith<$Res> {
  factory _$$RoomMessageAIGetImplCopyWith(_$RoomMessageAIGetImpl value,
          $Res Function(_$RoomMessageAIGetImpl) then) =
      __$$RoomMessageAIGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'created_at') String created_at,
      @JsonKey(name: 'nameRoom') String nameRoom});
}

/// @nodoc
class __$$RoomMessageAIGetImplCopyWithImpl<$Res>
    extends _$RoomMessageAIGetCopyWithImpl<$Res, _$RoomMessageAIGetImpl>
    implements _$$RoomMessageAIGetImplCopyWith<$Res> {
  __$$RoomMessageAIGetImplCopyWithImpl(_$RoomMessageAIGetImpl _value,
      $Res Function(_$RoomMessageAIGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomMessageAIGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? nameRoom = null,
  }) {
    return _then(_$RoomMessageAIGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      nameRoom: null == nameRoom
          ? _value.nameRoom
          : nameRoom // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomMessageAIGetImpl implements _RoomMessageAIGet {
  _$RoomMessageAIGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'created_at') required this.created_at,
      @JsonKey(name: 'nameRoom') required this.nameRoom});

  factory _$RoomMessageAIGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomMessageAIGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'created_at')
  final String created_at;
  @override
  @JsonKey(name: 'nameRoom')
  final String nameRoom;

  @override
  String toString() {
    return 'RoomMessageAIGet(id: $id, created_at: $created_at, nameRoom: $nameRoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomMessageAIGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.nameRoom, nameRoom) ||
                other.nameRoom == nameRoom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, created_at, nameRoom);

  /// Create a copy of RoomMessageAIGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomMessageAIGetImplCopyWith<_$RoomMessageAIGetImpl> get copyWith =>
      __$$RoomMessageAIGetImplCopyWithImpl<_$RoomMessageAIGetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomMessageAIGetImplToJson(
      this,
    );
  }
}

abstract class _RoomMessageAIGet implements RoomMessageAIGet {
  factory _RoomMessageAIGet(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'created_at') required final String created_at,
          @JsonKey(name: 'nameRoom') required final String nameRoom}) =
      _$RoomMessageAIGetImpl;

  factory _RoomMessageAIGet.fromJson(Map<String, dynamic> json) =
      _$RoomMessageAIGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'created_at')
  String get created_at;
  @override
  @JsonKey(name: 'nameRoom')
  String get nameRoom;

  /// Create a copy of RoomMessageAIGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomMessageAIGetImplCopyWith<_$RoomMessageAIGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
