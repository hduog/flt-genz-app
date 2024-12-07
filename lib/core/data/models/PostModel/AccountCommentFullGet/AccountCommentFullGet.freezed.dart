// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AccountCommentFullGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountCommentFullGet _$AccountCommentFullGetFromJson(
    Map<String, dynamic> json) {
  return _AccountCommentFullGet.fromJson(json);
}

/// @nodoc
mixin _$AccountCommentFullGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'avata')
  String? get avata => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickName')
  String? get nickName => throw _privateConstructorUsedError;

  /// Serializes this AccountCommentFullGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountCommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCommentFullGetCopyWith<AccountCommentFullGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCommentFullGetCopyWith<$Res> {
  factory $AccountCommentFullGetCopyWith(AccountCommentFullGet value,
          $Res Function(AccountCommentFullGet) then) =
      _$AccountCommentFullGetCopyWithImpl<$Res, AccountCommentFullGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'avata') String? avata,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'nickName') String? nickName});
}

/// @nodoc
class _$AccountCommentFullGetCopyWithImpl<$Res,
        $Val extends AccountCommentFullGet>
    implements $AccountCommentFullGetCopyWith<$Res> {
  _$AccountCommentFullGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountCommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avata = freezed,
    Object? fullName = null,
    Object? nickName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountCommentFullGetImplCopyWith<$Res>
    implements $AccountCommentFullGetCopyWith<$Res> {
  factory _$$AccountCommentFullGetImplCopyWith(
          _$AccountCommentFullGetImpl value,
          $Res Function(_$AccountCommentFullGetImpl) then) =
      __$$AccountCommentFullGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'avata') String? avata,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'nickName') String? nickName});
}

/// @nodoc
class __$$AccountCommentFullGetImplCopyWithImpl<$Res>
    extends _$AccountCommentFullGetCopyWithImpl<$Res,
        _$AccountCommentFullGetImpl>
    implements _$$AccountCommentFullGetImplCopyWith<$Res> {
  __$$AccountCommentFullGetImplCopyWithImpl(_$AccountCommentFullGetImpl _value,
      $Res Function(_$AccountCommentFullGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountCommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avata = freezed,
    Object? fullName = null,
    Object? nickName = freezed,
  }) {
    return _then(_$AccountCommentFullGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountCommentFullGetImpl implements _AccountCommentFullGet {
  _$AccountCommentFullGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'avata') this.avata,
      @JsonKey(name: 'fullName') required this.fullName,
      @JsonKey(name: 'nickName') this.nickName});

  factory _$AccountCommentFullGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountCommentFullGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'avata')
  final String? avata;
  @override
  @JsonKey(name: 'fullName')
  final String fullName;
  @override
  @JsonKey(name: 'nickName')
  final String? nickName;

  @override
  String toString() {
    return 'AccountCommentFullGet(id: $id, avata: $avata, fullName: $fullName, nickName: $nickName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountCommentFullGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avata, avata) || other.avata == avata) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, avata, fullName, nickName);

  /// Create a copy of AccountCommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountCommentFullGetImplCopyWith<_$AccountCommentFullGetImpl>
      get copyWith => __$$AccountCommentFullGetImplCopyWithImpl<
          _$AccountCommentFullGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountCommentFullGetImplToJson(
      this,
    );
  }
}

abstract class _AccountCommentFullGet implements AccountCommentFullGet {
  factory _AccountCommentFullGet(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'avata') final String? avata,
          @JsonKey(name: 'fullName') required final String fullName,
          @JsonKey(name: 'nickName') final String? nickName}) =
      _$AccountCommentFullGetImpl;

  factory _AccountCommentFullGet.fromJson(Map<String, dynamic> json) =
      _$AccountCommentFullGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'avata')
  String? get avata;
  @override
  @JsonKey(name: 'fullName')
  String get fullName;
  @override
  @JsonKey(name: 'nickName')
  String? get nickName;

  /// Create a copy of AccountCommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountCommentFullGetImplCopyWith<_$AccountCommentFullGetImpl>
      get copyWith => throw _privateConstructorUsedError;
}
