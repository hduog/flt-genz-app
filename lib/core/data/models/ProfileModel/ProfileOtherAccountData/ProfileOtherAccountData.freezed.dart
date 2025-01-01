// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ProfileOtherAccountData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileOtherAccountData _$ProfileOtherAccountDataFromJson(
    Map<String, dynamic> json) {
  return _ProfileOtherAccountData.fromJson(json);
}

/// @nodoc
mixin _$ProfileOtherAccountData {
  @JsonKey(name: 'profileOtherAccount')
  ProfileData get profileOtherAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_follow')
  IsFollowDataOtherAccount get is_follow => throw _privateConstructorUsedError;

  /// Serializes this ProfileOtherAccountData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileOtherAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileOtherAccountDataCopyWith<ProfileOtherAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileOtherAccountDataCopyWith<$Res> {
  factory $ProfileOtherAccountDataCopyWith(ProfileOtherAccountData value,
          $Res Function(ProfileOtherAccountData) then) =
      _$ProfileOtherAccountDataCopyWithImpl<$Res, ProfileOtherAccountData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'profileOtherAccount') ProfileData profileOtherAccount,
      @JsonKey(name: 'is_follow') IsFollowDataOtherAccount is_follow});

  $ProfileDataCopyWith<$Res> get profileOtherAccount;
  $IsFollowDataOtherAccountCopyWith<$Res> get is_follow;
}

/// @nodoc
class _$ProfileOtherAccountDataCopyWithImpl<$Res,
        $Val extends ProfileOtherAccountData>
    implements $ProfileOtherAccountDataCopyWith<$Res> {
  _$ProfileOtherAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileOtherAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileOtherAccount = null,
    Object? is_follow = null,
  }) {
    return _then(_value.copyWith(
      profileOtherAccount: null == profileOtherAccount
          ? _value.profileOtherAccount
          : profileOtherAccount // ignore: cast_nullable_to_non_nullable
              as ProfileData,
      is_follow: null == is_follow
          ? _value.is_follow
          : is_follow // ignore: cast_nullable_to_non_nullable
              as IsFollowDataOtherAccount,
    ) as $Val);
  }

  /// Create a copy of ProfileOtherAccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res> get profileOtherAccount {
    return $ProfileDataCopyWith<$Res>(_value.profileOtherAccount, (value) {
      return _then(_value.copyWith(profileOtherAccount: value) as $Val);
    });
  }

  /// Create a copy of ProfileOtherAccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IsFollowDataOtherAccountCopyWith<$Res> get is_follow {
    return $IsFollowDataOtherAccountCopyWith<$Res>(_value.is_follow, (value) {
      return _then(_value.copyWith(is_follow: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileOtherAccountDataImplCopyWith<$Res>
    implements $ProfileOtherAccountDataCopyWith<$Res> {
  factory _$$ProfileOtherAccountDataImplCopyWith(
          _$ProfileOtherAccountDataImpl value,
          $Res Function(_$ProfileOtherAccountDataImpl) then) =
      __$$ProfileOtherAccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'profileOtherAccount') ProfileData profileOtherAccount,
      @JsonKey(name: 'is_follow') IsFollowDataOtherAccount is_follow});

  @override
  $ProfileDataCopyWith<$Res> get profileOtherAccount;
  @override
  $IsFollowDataOtherAccountCopyWith<$Res> get is_follow;
}

/// @nodoc
class __$$ProfileOtherAccountDataImplCopyWithImpl<$Res>
    extends _$ProfileOtherAccountDataCopyWithImpl<$Res,
        _$ProfileOtherAccountDataImpl>
    implements _$$ProfileOtherAccountDataImplCopyWith<$Res> {
  __$$ProfileOtherAccountDataImplCopyWithImpl(
      _$ProfileOtherAccountDataImpl _value,
      $Res Function(_$ProfileOtherAccountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileOtherAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileOtherAccount = null,
    Object? is_follow = null,
  }) {
    return _then(_$ProfileOtherAccountDataImpl(
      profileOtherAccount: null == profileOtherAccount
          ? _value.profileOtherAccount
          : profileOtherAccount // ignore: cast_nullable_to_non_nullable
              as ProfileData,
      is_follow: null == is_follow
          ? _value.is_follow
          : is_follow // ignore: cast_nullable_to_non_nullable
              as IsFollowDataOtherAccount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileOtherAccountDataImpl implements _ProfileOtherAccountData {
  _$ProfileOtherAccountDataImpl(
      {@JsonKey(name: 'profileOtherAccount') required this.profileOtherAccount,
      @JsonKey(name: 'is_follow') required this.is_follow});

  factory _$ProfileOtherAccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileOtherAccountDataImplFromJson(json);

  @override
  @JsonKey(name: 'profileOtherAccount')
  final ProfileData profileOtherAccount;
  @override
  @JsonKey(name: 'is_follow')
  final IsFollowDataOtherAccount is_follow;

  @override
  String toString() {
    return 'ProfileOtherAccountData(profileOtherAccount: $profileOtherAccount, is_follow: $is_follow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileOtherAccountDataImpl &&
            (identical(other.profileOtherAccount, profileOtherAccount) ||
                other.profileOtherAccount == profileOtherAccount) &&
            (identical(other.is_follow, is_follow) ||
                other.is_follow == is_follow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profileOtherAccount, is_follow);

  /// Create a copy of ProfileOtherAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileOtherAccountDataImplCopyWith<_$ProfileOtherAccountDataImpl>
      get copyWith => __$$ProfileOtherAccountDataImplCopyWithImpl<
          _$ProfileOtherAccountDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileOtherAccountDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileOtherAccountData implements ProfileOtherAccountData {
  factory _ProfileOtherAccountData(
          {@JsonKey(name: 'profileOtherAccount')
          required final ProfileData profileOtherAccount,
          @JsonKey(name: 'is_follow')
          required final IsFollowDataOtherAccount is_follow}) =
      _$ProfileOtherAccountDataImpl;

  factory _ProfileOtherAccountData.fromJson(Map<String, dynamic> json) =
      _$ProfileOtherAccountDataImpl.fromJson;

  @override
  @JsonKey(name: 'profileOtherAccount')
  ProfileData get profileOtherAccount;
  @override
  @JsonKey(name: 'is_follow')
  IsFollowDataOtherAccount get is_follow;

  /// Create a copy of ProfileOtherAccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileOtherAccountDataImplCopyWith<_$ProfileOtherAccountDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
