// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RoomMessageAIPost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomMessageAIPost _$RoomMessageAIPostFromJson(Map<String, dynamic> json) {
  return _RoomMessageAIPost.fromJson(json);
}

/// @nodoc
mixin _$RoomMessageAIPost {
  @JsonKey(name: 'accountInRoom')
  List<String> get accountInRoom => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this RoomMessageAIPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomMessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomMessageAIPostCopyWith<RoomMessageAIPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomMessageAIPostCopyWith<$Res> {
  factory $RoomMessageAIPostCopyWith(
          RoomMessageAIPost value, $Res Function(RoomMessageAIPost) then) =
      _$RoomMessageAIPostCopyWithImpl<$Res, RoomMessageAIPost>;
  @useResult
  $Res call(
      {@JsonKey(name: 'accountInRoom') List<String> accountInRoom,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$RoomMessageAIPostCopyWithImpl<$Res, $Val extends RoomMessageAIPost>
    implements $RoomMessageAIPostCopyWith<$Res> {
  _$RoomMessageAIPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomMessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountInRoom = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      accountInRoom: null == accountInRoom
          ? _value.accountInRoom
          : accountInRoom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomMessageAIPostImplCopyWith<$Res>
    implements $RoomMessageAIPostCopyWith<$Res> {
  factory _$$RoomMessageAIPostImplCopyWith(_$RoomMessageAIPostImpl value,
          $Res Function(_$RoomMessageAIPostImpl) then) =
      __$$RoomMessageAIPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'accountInRoom') List<String> accountInRoom,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$RoomMessageAIPostImplCopyWithImpl<$Res>
    extends _$RoomMessageAIPostCopyWithImpl<$Res, _$RoomMessageAIPostImpl>
    implements _$$RoomMessageAIPostImplCopyWith<$Res> {
  __$$RoomMessageAIPostImplCopyWithImpl(_$RoomMessageAIPostImpl _value,
      $Res Function(_$RoomMessageAIPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomMessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountInRoom = null,
    Object? name = null,
  }) {
    return _then(_$RoomMessageAIPostImpl(
      accountInRoom: null == accountInRoom
          ? _value._accountInRoom
          : accountInRoom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomMessageAIPostImpl implements _RoomMessageAIPost {
  _$RoomMessageAIPostImpl(
      {@JsonKey(name: 'accountInRoom')
      required final List<String> accountInRoom,
      @JsonKey(name: 'name') required this.name})
      : _accountInRoom = accountInRoom;

  factory _$RoomMessageAIPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomMessageAIPostImplFromJson(json);

  final List<String> _accountInRoom;
  @override
  @JsonKey(name: 'accountInRoom')
  List<String> get accountInRoom {
    if (_accountInRoom is EqualUnmodifiableListView) return _accountInRoom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountInRoom);
  }

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'RoomMessageAIPost(accountInRoom: $accountInRoom, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomMessageAIPostImpl &&
            const DeepCollectionEquality()
                .equals(other._accountInRoom, _accountInRoom) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_accountInRoom), name);

  /// Create a copy of RoomMessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomMessageAIPostImplCopyWith<_$RoomMessageAIPostImpl> get copyWith =>
      __$$RoomMessageAIPostImplCopyWithImpl<_$RoomMessageAIPostImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomMessageAIPostImplToJson(
      this,
    );
  }
}

abstract class _RoomMessageAIPost implements RoomMessageAIPost {
  factory _RoomMessageAIPost(
          {@JsonKey(name: 'accountInRoom')
          required final List<String> accountInRoom,
          @JsonKey(name: 'name') required final String name}) =
      _$RoomMessageAIPostImpl;

  factory _RoomMessageAIPost.fromJson(Map<String, dynamic> json) =
      _$RoomMessageAIPostImpl.fromJson;

  @override
  @JsonKey(name: 'accountInRoom')
  List<String> get accountInRoom;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of RoomMessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomMessageAIPostImplCopyWith<_$RoomMessageAIPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
