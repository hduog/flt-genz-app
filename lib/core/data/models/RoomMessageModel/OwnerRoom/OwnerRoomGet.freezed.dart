// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'OwnerRoomGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OwnerRoomGet _$OwnerRoomGetFromJson(Map<String, dynamic> json) {
  return _OwnerRoomGet.fromJson(json);
}

/// @nodoc
mixin _$OwnerRoomGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'avata')
  String? get avata => throw _privateConstructorUsedError;

  /// Serializes this OwnerRoomGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OwnerRoomGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerRoomGetCopyWith<OwnerRoomGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerRoomGetCopyWith<$Res> {
  factory $OwnerRoomGetCopyWith(
          OwnerRoomGet value, $Res Function(OwnerRoomGet) then) =
      _$OwnerRoomGetCopyWithImpl<$Res, OwnerRoomGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String? fullName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'avata') String? avata});
}

/// @nodoc
class _$OwnerRoomGetCopyWithImpl<$Res, $Val extends OwnerRoomGet>
    implements $OwnerRoomGetCopyWith<$Res> {
  _$OwnerRoomGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerRoomGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? avata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerRoomGetImplCopyWith<$Res>
    implements $OwnerRoomGetCopyWith<$Res> {
  factory _$$OwnerRoomGetImplCopyWith(
          _$OwnerRoomGetImpl value, $Res Function(_$OwnerRoomGetImpl) then) =
      __$$OwnerRoomGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String? fullName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'avata') String? avata});
}

/// @nodoc
class __$$OwnerRoomGetImplCopyWithImpl<$Res>
    extends _$OwnerRoomGetCopyWithImpl<$Res, _$OwnerRoomGetImpl>
    implements _$$OwnerRoomGetImplCopyWith<$Res> {
  __$$OwnerRoomGetImplCopyWithImpl(
      _$OwnerRoomGetImpl _value, $Res Function(_$OwnerRoomGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRoomGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? avata = freezed,
  }) {
    return _then(_$OwnerRoomGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerRoomGetImpl implements _OwnerRoomGet {
  _$OwnerRoomGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fullName') this.fullName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'avata') this.avata});

  factory _$OwnerRoomGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerRoomGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'avata')
  final String? avata;

  @override
  String toString() {
    return 'OwnerRoomGet(id: $id, fullName: $fullName, email: $email, avata: $avata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerRoomGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avata, avata) || other.avata == avata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email, avata);

  /// Create a copy of OwnerRoomGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerRoomGetImplCopyWith<_$OwnerRoomGetImpl> get copyWith =>
      __$$OwnerRoomGetImplCopyWithImpl<_$OwnerRoomGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerRoomGetImplToJson(
      this,
    );
  }
}

abstract class _OwnerRoomGet implements OwnerRoomGet {
  factory _OwnerRoomGet(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'fullName') final String? fullName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'avata') final String? avata}) = _$OwnerRoomGetImpl;

  factory _OwnerRoomGet.fromJson(Map<String, dynamic> json) =
      _$OwnerRoomGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'avata')
  String? get avata;

  /// Create a copy of OwnerRoomGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerRoomGetImplCopyWith<_$OwnerRoomGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
