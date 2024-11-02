// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'BasicInfoGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasicInfoGet _$BasicInfoGetFromJson(Map<String, dynamic> json) {
  return _BasicInfoGet.fromJson(json);
}

/// @nodoc
mixin _$BasicInfoGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'roles')
  List<RoleInfoGet>? get roles => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth')
  String? get birth => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickName')
  String? get nickName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'avata')
  String? get avata => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'descriptionRole')
  String? get descriptionRole => throw _privateConstructorUsedError;

  /// Serializes this BasicInfoGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasicInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasicInfoGetCopyWith<BasicInfoGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoGetCopyWith<$Res> {
  factory $BasicInfoGetCopyWith(
          BasicInfoGet value, $Res Function(BasicInfoGet) then) =
      _$BasicInfoGetCopyWithImpl<$Res, BasicInfoGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'roles') List<RoleInfoGet>? roles,
      @JsonKey(name: 'birth') String? birth,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'nickName') String? nickName,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'avata') String? avata,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'descriptionRole') String? descriptionRole});
}

/// @nodoc
class _$BasicInfoGetCopyWithImpl<$Res, $Val extends BasicInfoGet>
    implements $BasicInfoGetCopyWith<$Res> {
  _$BasicInfoGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasicInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? fullName = null,
    Object? roles = freezed,
    Object? birth = freezed,
    Object? address = freezed,
    Object? nickName = freezed,
    Object? phone = freezed,
    Object? avata = freezed,
    Object? banner = freezed,
    Object? descriptionRole = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleInfoGet>?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionRole: freezed == descriptionRole
          ? _value.descriptionRole
          : descriptionRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicInfoGetImplCopyWith<$Res>
    implements $BasicInfoGetCopyWith<$Res> {
  factory _$$BasicInfoGetImplCopyWith(
          _$BasicInfoGetImpl value, $Res Function(_$BasicInfoGetImpl) then) =
      __$$BasicInfoGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'roles') List<RoleInfoGet>? roles,
      @JsonKey(name: 'birth') String? birth,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'nickName') String? nickName,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'avata') String? avata,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'descriptionRole') String? descriptionRole});
}

/// @nodoc
class __$$BasicInfoGetImplCopyWithImpl<$Res>
    extends _$BasicInfoGetCopyWithImpl<$Res, _$BasicInfoGetImpl>
    implements _$$BasicInfoGetImplCopyWith<$Res> {
  __$$BasicInfoGetImplCopyWithImpl(
      _$BasicInfoGetImpl _value, $Res Function(_$BasicInfoGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasicInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? fullName = null,
    Object? roles = freezed,
    Object? birth = freezed,
    Object? address = freezed,
    Object? nickName = freezed,
    Object? phone = freezed,
    Object? avata = freezed,
    Object? banner = freezed,
    Object? descriptionRole = freezed,
  }) {
    return _then(_$BasicInfoGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleInfoGet>?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionRole: freezed == descriptionRole
          ? _value.descriptionRole
          : descriptionRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicInfoGetImpl implements _BasicInfoGet {
  _$BasicInfoGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'fullName') required this.fullName,
      @JsonKey(name: 'roles') final List<RoleInfoGet>? roles,
      @JsonKey(name: 'birth') this.birth,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'nickName') this.nickName,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'avata') this.avata,
      @JsonKey(name: 'banner') this.banner,
      @JsonKey(name: 'descriptionRole') this.descriptionRole})
      : _roles = roles;

  factory _$BasicInfoGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicInfoGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'fullName')
  final String fullName;
  final List<RoleInfoGet>? _roles;
  @override
  @JsonKey(name: 'roles')
  List<RoleInfoGet>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'birth')
  final String? birth;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'nickName')
  final String? nickName;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'avata')
  final String? avata;
  @override
  @JsonKey(name: 'banner')
  final String? banner;
  @override
  @JsonKey(name: 'descriptionRole')
  final String? descriptionRole;

  @override
  String toString() {
    return 'BasicInfoGet(id: $id, email: $email, fullName: $fullName, roles: $roles, birth: $birth, address: $address, nickName: $nickName, phone: $phone, avata: $avata, banner: $banner, descriptionRole: $descriptionRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicInfoGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avata, avata) || other.avata == avata) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.descriptionRole, descriptionRole) ||
                other.descriptionRole == descriptionRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      fullName,
      const DeepCollectionEquality().hash(_roles),
      birth,
      address,
      nickName,
      phone,
      avata,
      banner,
      descriptionRole);

  /// Create a copy of BasicInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicInfoGetImplCopyWith<_$BasicInfoGetImpl> get copyWith =>
      __$$BasicInfoGetImplCopyWithImpl<_$BasicInfoGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicInfoGetImplToJson(
      this,
    );
  }
}

abstract class _BasicInfoGet implements BasicInfoGet {
  factory _BasicInfoGet(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'fullName') required final String fullName,
          @JsonKey(name: 'roles') final List<RoleInfoGet>? roles,
          @JsonKey(name: 'birth') final String? birth,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'nickName') final String? nickName,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'avata') final String? avata,
          @JsonKey(name: 'banner') final String? banner,
          @JsonKey(name: 'descriptionRole') final String? descriptionRole}) =
      _$BasicInfoGetImpl;

  factory _BasicInfoGet.fromJson(Map<String, dynamic> json) =
      _$BasicInfoGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'fullName')
  String get fullName;
  @override
  @JsonKey(name: 'roles')
  List<RoleInfoGet>? get roles;
  @override
  @JsonKey(name: 'birth')
  String? get birth;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'nickName')
  String? get nickName;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'avata')
  String? get avata;
  @override
  @JsonKey(name: 'banner')
  String? get banner;
  @override
  @JsonKey(name: 'descriptionRole')
  String? get descriptionRole;

  /// Create a copy of BasicInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasicInfoGetImplCopyWith<_$BasicInfoGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
