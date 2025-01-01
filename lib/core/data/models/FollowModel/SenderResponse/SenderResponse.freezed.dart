// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SenderResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SenderResponse _$SenderResponseFromJson(Map<String, dynamic> json) {
  return _SenderResponse.fromJson(json);
}

/// @nodoc
mixin _$SenderResponse {
  @JsonKey(name: 'fullName')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'aboutMe')
  String get aboutMe => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickName')
  String get nickName => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth')
  String get birth => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;

  /// Serializes this SenderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SenderResponseCopyWith<SenderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderResponseCopyWith<$Res> {
  factory $SenderResponseCopyWith(
          SenderResponse value, $Res Function(SenderResponse) then) =
      _$SenderResponseCopyWithImpl<$Res, SenderResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'aboutMe') String aboutMe,
      @JsonKey(name: 'nickName') String nickName,
      @JsonKey(name: 'birth') String birth,
      @JsonKey(name: 'address') String address});
}

/// @nodoc
class _$SenderResponseCopyWithImpl<$Res, $Val extends SenderResponse>
    implements $SenderResponseCopyWith<$Res> {
  _$SenderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? id = null,
    Object? phone = null,
    Object? aboutMe = null,
    Object? nickName = null,
    Object? birth = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      aboutMe: null == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SenderResponseImplCopyWith<$Res>
    implements $SenderResponseCopyWith<$Res> {
  factory _$$SenderResponseImplCopyWith(_$SenderResponseImpl value,
          $Res Function(_$SenderResponseImpl) then) =
      __$$SenderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'aboutMe') String aboutMe,
      @JsonKey(name: 'nickName') String nickName,
      @JsonKey(name: 'birth') String birth,
      @JsonKey(name: 'address') String address});
}

/// @nodoc
class __$$SenderResponseImplCopyWithImpl<$Res>
    extends _$SenderResponseCopyWithImpl<$Res, _$SenderResponseImpl>
    implements _$$SenderResponseImplCopyWith<$Res> {
  __$$SenderResponseImplCopyWithImpl(
      _$SenderResponseImpl _value, $Res Function(_$SenderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? id = null,
    Object? phone = null,
    Object? aboutMe = null,
    Object? nickName = null,
    Object? birth = null,
    Object? address = null,
  }) {
    return _then(_$SenderResponseImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      aboutMe: null == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SenderResponseImpl implements _SenderResponse {
  _$SenderResponseImpl(
      {@JsonKey(name: 'fullName') required this.fullName,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'aboutMe') required this.aboutMe,
      @JsonKey(name: 'nickName') required this.nickName,
      @JsonKey(name: 'birth') required this.birth,
      @JsonKey(name: 'address') required this.address});

  factory _$SenderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SenderResponseImplFromJson(json);

  @override
  @JsonKey(name: 'fullName')
  final String fullName;
  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'aboutMe')
  final String aboutMe;
  @override
  @JsonKey(name: 'nickName')
  final String nickName;
  @override
  @JsonKey(name: 'birth')
  final String birth;
  @override
  @JsonKey(name: 'address')
  final String address;

  @override
  String toString() {
    return 'SenderResponse(fullName: $fullName, id: $id, phone: $phone, aboutMe: $aboutMe, nickName: $nickName, birth: $birth, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SenderResponseImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, id, phone, aboutMe, nickName, birth, address);

  /// Create a copy of SenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SenderResponseImplCopyWith<_$SenderResponseImpl> get copyWith =>
      __$$SenderResponseImplCopyWithImpl<_$SenderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SenderResponseImplToJson(
      this,
    );
  }
}

abstract class _SenderResponse implements SenderResponse {
  factory _SenderResponse(
          {@JsonKey(name: 'fullName') required final String fullName,
          @JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'phone') required final String phone,
          @JsonKey(name: 'aboutMe') required final String aboutMe,
          @JsonKey(name: 'nickName') required final String nickName,
          @JsonKey(name: 'birth') required final String birth,
          @JsonKey(name: 'address') required final String address}) =
      _$SenderResponseImpl;

  factory _SenderResponse.fromJson(Map<String, dynamic> json) =
      _$SenderResponseImpl.fromJson;

  @override
  @JsonKey(name: 'fullName')
  String get fullName;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'aboutMe')
  String get aboutMe;
  @override
  @JsonKey(name: 'nickName')
  String get nickName;
  @override
  @JsonKey(name: 'birth')
  String get birth;
  @override
  @JsonKey(name: 'address')
  String get address;

  /// Create a copy of SenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SenderResponseImplCopyWith<_$SenderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
