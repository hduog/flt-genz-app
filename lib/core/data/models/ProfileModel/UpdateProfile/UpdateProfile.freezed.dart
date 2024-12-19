// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UpdateProfile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProfile _$UpdateProfileFromJson(Map<String, dynamic> json) {
  return _UpdateProfile.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfile {
  @JsonKey(name: 'fullName')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'aboutMe')
  String? get aboutMe => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickName')
  String? get nickName => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite')
  List<FavoriteTagData>? get favorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'avata')
  UpdateAvatarProfile? get avata => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  UpdateBannerProfile? get imbannerage => throw _privateConstructorUsedError;

  /// Serializes this UpdateProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileCopyWith<UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileCopyWith<$Res> {
  factory $UpdateProfileCopyWith(
          UpdateProfile value, $Res Function(UpdateProfile) then) =
      _$UpdateProfileCopyWithImpl<$Res, UpdateProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'aboutMe') String? aboutMe,
      @JsonKey(name: 'nickName') String? nickName,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'favorite') List<FavoriteTagData>? favorite,
      @JsonKey(name: 'avata') UpdateAvatarProfile? avata,
      @JsonKey(name: 'banner') UpdateBannerProfile? imbannerage});

  $UpdateAvatarProfileCopyWith<$Res>? get avata;
  $UpdateBannerProfileCopyWith<$Res>? get imbannerage;
}

/// @nodoc
class _$UpdateProfileCopyWithImpl<$Res, $Val extends UpdateProfile>
    implements $UpdateProfileCopyWith<$Res> {
  _$UpdateProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phone = null,
    Object? aboutMe = freezed,
    Object? nickName = freezed,
    Object? address = freezed,
    Object? favorite = freezed,
    Object? avata = freezed,
    Object? imbannerage = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<FavoriteTagData>?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as UpdateAvatarProfile?,
      imbannerage: freezed == imbannerage
          ? _value.imbannerage
          : imbannerage // ignore: cast_nullable_to_non_nullable
              as UpdateBannerProfile?,
    ) as $Val);
  }

  /// Create a copy of UpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateAvatarProfileCopyWith<$Res>? get avata {
    if (_value.avata == null) {
      return null;
    }

    return $UpdateAvatarProfileCopyWith<$Res>(_value.avata!, (value) {
      return _then(_value.copyWith(avata: value) as $Val);
    });
  }

  /// Create a copy of UpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateBannerProfileCopyWith<$Res>? get imbannerage {
    if (_value.imbannerage == null) {
      return null;
    }

    return $UpdateBannerProfileCopyWith<$Res>(_value.imbannerage!, (value) {
      return _then(_value.copyWith(imbannerage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res>
    implements $UpdateProfileCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
          _$UpdateProfileImpl value, $Res Function(_$UpdateProfileImpl) then) =
      __$$UpdateProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'aboutMe') String? aboutMe,
      @JsonKey(name: 'nickName') String? nickName,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'favorite') List<FavoriteTagData>? favorite,
      @JsonKey(name: 'avata') UpdateAvatarProfile? avata,
      @JsonKey(name: 'banner') UpdateBannerProfile? imbannerage});

  @override
  $UpdateAvatarProfileCopyWith<$Res>? get avata;
  @override
  $UpdateBannerProfileCopyWith<$Res>? get imbannerage;
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$UpdateProfileCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
      _$UpdateProfileImpl _value, $Res Function(_$UpdateProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phone = null,
    Object? aboutMe = freezed,
    Object? nickName = freezed,
    Object? address = freezed,
    Object? favorite = freezed,
    Object? avata = freezed,
    Object? imbannerage = freezed,
  }) {
    return _then(_$UpdateProfileImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      favorite: freezed == favorite
          ? _value._favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<FavoriteTagData>?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as UpdateAvatarProfile?,
      imbannerage: freezed == imbannerage
          ? _value.imbannerage
          : imbannerage // ignore: cast_nullable_to_non_nullable
              as UpdateBannerProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfileImpl implements _UpdateProfile {
  _$UpdateProfileImpl(
      {@JsonKey(name: 'fullName') required this.fullName,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'aboutMe') this.aboutMe,
      @JsonKey(name: 'nickName') this.nickName,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'favorite') final List<FavoriteTagData>? favorite,
      @JsonKey(name: 'avata') this.avata,
      @JsonKey(name: 'banner') this.imbannerage})
      : _favorite = favorite;

  factory _$UpdateProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProfileImplFromJson(json);

  @override
  @JsonKey(name: 'fullName')
  final String fullName;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'aboutMe')
  final String? aboutMe;
  @override
  @JsonKey(name: 'nickName')
  final String? nickName;
  @override
  @JsonKey(name: 'address')
  final String? address;
  final List<FavoriteTagData>? _favorite;
  @override
  @JsonKey(name: 'favorite')
  List<FavoriteTagData>? get favorite {
    final value = _favorite;
    if (value == null) return null;
    if (_favorite is EqualUnmodifiableListView) return _favorite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'avata')
  final UpdateAvatarProfile? avata;
  @override
  @JsonKey(name: 'banner')
  final UpdateBannerProfile? imbannerage;

  @override
  String toString() {
    return 'UpdateProfile(fullName: $fullName, phone: $phone, aboutMe: $aboutMe, nickName: $nickName, address: $address, favorite: $favorite, avata: $avata, imbannerage: $imbannerage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._favorite, _favorite) &&
            (identical(other.avata, avata) || other.avata == avata) &&
            (identical(other.imbannerage, imbannerage) ||
                other.imbannerage == imbannerage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      phone,
      aboutMe,
      nickName,
      address,
      const DeepCollectionEquality().hash(_favorite),
      avata,
      imbannerage);

  /// Create a copy of UpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfile implements UpdateProfile {
  factory _UpdateProfile(
          {@JsonKey(name: 'fullName') required final String fullName,
          @JsonKey(name: 'phone') required final String phone,
          @JsonKey(name: 'aboutMe') final String? aboutMe,
          @JsonKey(name: 'nickName') final String? nickName,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'favorite') final List<FavoriteTagData>? favorite,
          @JsonKey(name: 'avata') final UpdateAvatarProfile? avata,
          @JsonKey(name: 'banner') final UpdateBannerProfile? imbannerage}) =
      _$UpdateProfileImpl;

  factory _UpdateProfile.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileImpl.fromJson;

  @override
  @JsonKey(name: 'fullName')
  String get fullName;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'aboutMe')
  String? get aboutMe;
  @override
  @JsonKey(name: 'nickName')
  String? get nickName;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'favorite')
  List<FavoriteTagData>? get favorite;
  @override
  @JsonKey(name: 'avata')
  UpdateAvatarProfile? get avata;
  @override
  @JsonKey(name: 'banner')
  UpdateBannerProfile? get imbannerage;

  /// Create a copy of UpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
