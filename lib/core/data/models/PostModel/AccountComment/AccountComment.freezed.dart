// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AccountComment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountComment _$AccountCommentFromJson(Map<String, dynamic> json) {
  return _AccountComment.fromJson(json);
}

/// @nodoc
mixin _$AccountComment {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'avata')
  String? get avata => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nick_name')
  String? get nick_name => throw _privateConstructorUsedError;

  /// Serializes this AccountComment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCommentCopyWith<AccountComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCommentCopyWith<$Res> {
  factory $AccountCommentCopyWith(
          AccountComment value, $Res Function(AccountComment) then) =
      _$AccountCommentCopyWithImpl<$Res, AccountComment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'avata') String? avata,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'nick_name') String? nick_name});
}

/// @nodoc
class _$AccountCommentCopyWithImpl<$Res, $Val extends AccountComment>
    implements $AccountCommentCopyWith<$Res> {
  _$AccountCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avata = freezed,
    Object? name = null,
    Object? nick_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nick_name: freezed == nick_name
          ? _value.nick_name
          : nick_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountCommentImplCopyWith<$Res>
    implements $AccountCommentCopyWith<$Res> {
  factory _$$AccountCommentImplCopyWith(_$AccountCommentImpl value,
          $Res Function(_$AccountCommentImpl) then) =
      __$$AccountCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'avata') String? avata,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'nick_name') String? nick_name});
}

/// @nodoc
class __$$AccountCommentImplCopyWithImpl<$Res>
    extends _$AccountCommentCopyWithImpl<$Res, _$AccountCommentImpl>
    implements _$$AccountCommentImplCopyWith<$Res> {
  __$$AccountCommentImplCopyWithImpl(
      _$AccountCommentImpl _value, $Res Function(_$AccountCommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avata = freezed,
    Object? name = null,
    Object? nick_name = freezed,
  }) {
    return _then(_$AccountCommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nick_name: freezed == nick_name
          ? _value.nick_name
          : nick_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountCommentImpl implements _AccountComment {
  _$AccountCommentImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'avata') this.avata,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'nick_name') this.nick_name});

  factory _$AccountCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountCommentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'avata')
  final String? avata;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'nick_name')
  final String? nick_name;

  @override
  String toString() {
    return 'AccountComment(id: $id, avata: $avata, name: $name, nick_name: $nick_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountCommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avata, avata) || other.avata == avata) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nick_name, nick_name) ||
                other.nick_name == nick_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, avata, name, nick_name);

  /// Create a copy of AccountComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountCommentImplCopyWith<_$AccountCommentImpl> get copyWith =>
      __$$AccountCommentImplCopyWithImpl<_$AccountCommentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountCommentImplToJson(
      this,
    );
  }
}

abstract class _AccountComment implements AccountComment {
  factory _AccountComment(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'avata') final String? avata,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'nick_name') final String? nick_name}) =
      _$AccountCommentImpl;

  factory _AccountComment.fromJson(Map<String, dynamic> json) =
      _$AccountCommentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'avata')
  String? get avata;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'nick_name')
  String? get nick_name;

  /// Create a copy of AccountComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountCommentImplCopyWith<_$AccountCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
