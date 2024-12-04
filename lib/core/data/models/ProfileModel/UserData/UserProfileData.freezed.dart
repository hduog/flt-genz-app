// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UserProfileData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String get fullName => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'avata')
  String get avata => throw _privateConstructorUsedError;
  @JsonKey(name: 'isValid')
  bool? get isValid => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'roles')
  List<RoleProfile>? get roles => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite')
  List<FavoriteData>? get favorite => throw _privateConstructorUsedError;

  /// Serializes this UserProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileDataCopyWith<UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res, UserProfileData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'aboutMe') String aboutMe,
      @JsonKey(name: 'nickName') String nickName,
      @JsonKey(name: 'birth') String birth,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'avata') String avata,
      @JsonKey(name: 'isValid') bool? isValid,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'roles') List<RoleProfile>? roles,
      @JsonKey(name: 'favorite') List<FavoriteData>? favorite});
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res, $Val extends UserProfileData>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? aboutMe = null,
    Object? nickName = null,
    Object? birth = null,
    Object? address = null,
    Object? avata = null,
    Object? isValid = freezed,
    Object? banner = freezed,
    Object? email = freezed,
    Object? roles = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
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
      avata: null == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleProfile>?,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<FavoriteData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileDataImplCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$$UserProfileDataImplCopyWith(_$UserProfileDataImpl value,
          $Res Function(_$UserProfileDataImpl) then) =
      __$$UserProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'aboutMe') String aboutMe,
      @JsonKey(name: 'nickName') String nickName,
      @JsonKey(name: 'birth') String birth,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'avata') String avata,
      @JsonKey(name: 'isValid') bool? isValid,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'roles') List<RoleProfile>? roles,
      @JsonKey(name: 'favorite') List<FavoriteData>? favorite});
}

/// @nodoc
class __$$UserProfileDataImplCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res, _$UserProfileDataImpl>
    implements _$$UserProfileDataImplCopyWith<$Res> {
  __$$UserProfileDataImplCopyWithImpl(
      _$UserProfileDataImpl _value, $Res Function(_$UserProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? aboutMe = null,
    Object? nickName = null,
    Object? birth = null,
    Object? address = null,
    Object? avata = null,
    Object? isValid = freezed,
    Object? banner = freezed,
    Object? email = freezed,
    Object? roles = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_$UserProfileDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
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
      avata: null == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleProfile>?,
      favorite: freezed == favorite
          ? _value._favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<FavoriteData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileDataImpl implements _UserProfileData {
  _$UserProfileDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fullName') required this.fullName,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'aboutMe') required this.aboutMe,
      @JsonKey(name: 'nickName') required this.nickName,
      @JsonKey(name: 'birth') required this.birth,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'avata') required this.avata,
      @JsonKey(name: 'isValid') this.isValid,
      @JsonKey(name: 'banner') this.banner,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'roles') final List<RoleProfile>? roles,
      @JsonKey(name: 'favorite') final List<FavoriteData>? favorite})
      : _roles = roles,
        _favorite = favorite;

  factory _$UserProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'fullName')
  final String fullName;
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
  @JsonKey(name: 'avata')
  final String avata;
  @override
  @JsonKey(name: 'isValid')
  final bool? isValid;
  @override
  @JsonKey(name: 'banner')
  final String? banner;
  @override
  @JsonKey(name: 'email')
  final String? email;
  final List<RoleProfile>? _roles;
  @override
  @JsonKey(name: 'roles')
  List<RoleProfile>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FavoriteData>? _favorite;
  @override
  @JsonKey(name: 'favorite')
  List<FavoriteData>? get favorite {
    final value = _favorite;
    if (value == null) return null;
    if (_favorite is EqualUnmodifiableListView) return _favorite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserProfileData(id: $id, fullName: $fullName, phone: $phone, aboutMe: $aboutMe, nickName: $nickName, birth: $birth, address: $address, avata: $avata, isValid: $isValid, banner: $banner, email: $email, roles: $roles, favorite: $favorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.avata, avata) || other.avata == avata) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality().equals(other._favorite, _favorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      phone,
      aboutMe,
      nickName,
      birth,
      address,
      avata,
      isValid,
      banner,
      email,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_favorite));

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      __$$UserProfileDataImplCopyWithImpl<_$UserProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileDataImplToJson(
      this,
    );
  }
}

abstract class _UserProfileData implements UserProfileData {
  factory _UserProfileData(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'fullName') required final String fullName,
          @JsonKey(name: 'phone') required final String phone,
          @JsonKey(name: 'aboutMe') required final String aboutMe,
          @JsonKey(name: 'nickName') required final String nickName,
          @JsonKey(name: 'birth') required final String birth,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'avata') required final String avata,
          @JsonKey(name: 'isValid') final bool? isValid,
          @JsonKey(name: 'banner') final String? banner,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'roles') final List<RoleProfile>? roles,
          @JsonKey(name: 'favorite') final List<FavoriteData>? favorite}) =
      _$UserProfileDataImpl;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$UserProfileDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'fullName')
  String get fullName;
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
  @override
  @JsonKey(name: 'avata')
  String get avata;
  @override
  @JsonKey(name: 'isValid')
  bool? get isValid;
  @override
  @JsonKey(name: 'banner')
  String? get banner;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'roles')
  List<RoleProfile>? get roles;
  @override
  @JsonKey(name: 'favorite')
  List<FavoriteData>? get favorite;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
