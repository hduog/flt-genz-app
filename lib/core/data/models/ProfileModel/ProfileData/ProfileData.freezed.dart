// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ProfileData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) {
  return _ProfileData.fromJson(json);
}

/// @nodoc
mixin _$ProfileData {
  @JsonKey(name: 'objectCount')
  ObjectCount get objectCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserProfileData get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'follower')
  List<FollowersData>? get follower => throw _privateConstructorUsedError;
  @JsonKey(name: 'followings')
  List<FollowingsData>? get followings => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  List<ImageDataProfile>? get image => throw _privateConstructorUsedError;

  /// Serializes this ProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDataCopyWith<ProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataCopyWith<$Res> {
  factory $ProfileDataCopyWith(
          ProfileData value, $Res Function(ProfileData) then) =
      _$ProfileDataCopyWithImpl<$Res, ProfileData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'objectCount') ObjectCount objectCount,
      @JsonKey(name: 'user') UserProfileData user,
      @JsonKey(name: 'follower') List<FollowersData>? follower,
      @JsonKey(name: 'followings') List<FollowingsData>? followings,
      @JsonKey(name: 'image') List<ImageDataProfile>? image});

  $ObjectCountCopyWith<$Res> get objectCount;
  $UserProfileDataCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileDataCopyWithImpl<$Res, $Val extends ProfileData>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectCount = null,
    Object? user = null,
    Object? follower = freezed,
    Object? followings = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      objectCount: null == objectCount
          ? _value.objectCount
          : objectCount // ignore: cast_nullable_to_non_nullable
              as ObjectCount,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
      follower: freezed == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as List<FollowersData>?,
      followings: freezed == followings
          ? _value.followings
          : followings // ignore: cast_nullable_to_non_nullable
              as List<FollowingsData>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<ImageDataProfile>?,
    ) as $Val);
  }

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ObjectCountCopyWith<$Res> get objectCount {
    return $ObjectCountCopyWith<$Res>(_value.objectCount, (value) {
      return _then(_value.copyWith(objectCount: value) as $Val);
    });
  }

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res> get user {
    return $UserProfileDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDataImplCopyWith<$Res>
    implements $ProfileDataCopyWith<$Res> {
  factory _$$ProfileDataImplCopyWith(
          _$ProfileDataImpl value, $Res Function(_$ProfileDataImpl) then) =
      __$$ProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'objectCount') ObjectCount objectCount,
      @JsonKey(name: 'user') UserProfileData user,
      @JsonKey(name: 'follower') List<FollowersData>? follower,
      @JsonKey(name: 'followings') List<FollowingsData>? followings,
      @JsonKey(name: 'image') List<ImageDataProfile>? image});

  @override
  $ObjectCountCopyWith<$Res> get objectCount;
  @override
  $UserProfileDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$ProfileDataImplCopyWithImpl<$Res>
    extends _$ProfileDataCopyWithImpl<$Res, _$ProfileDataImpl>
    implements _$$ProfileDataImplCopyWith<$Res> {
  __$$ProfileDataImplCopyWithImpl(
      _$ProfileDataImpl _value, $Res Function(_$ProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectCount = null,
    Object? user = null,
    Object? follower = freezed,
    Object? followings = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ProfileDataImpl(
      objectCount: null == objectCount
          ? _value.objectCount
          : objectCount // ignore: cast_nullable_to_non_nullable
              as ObjectCount,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
      follower: freezed == follower
          ? _value._follower
          : follower // ignore: cast_nullable_to_non_nullable
              as List<FollowersData>?,
      followings: freezed == followings
          ? _value._followings
          : followings // ignore: cast_nullable_to_non_nullable
              as List<FollowingsData>?,
      image: freezed == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<ImageDataProfile>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataImpl implements _ProfileData {
  _$ProfileDataImpl(
      {@JsonKey(name: 'objectCount') required this.objectCount,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'follower') final List<FollowersData>? follower,
      @JsonKey(name: 'followings') final List<FollowingsData>? followings,
      @JsonKey(name: 'image') final List<ImageDataProfile>? image})
      : _follower = follower,
        _followings = followings,
        _image = image;

  factory _$ProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataImplFromJson(json);

  @override
  @JsonKey(name: 'objectCount')
  final ObjectCount objectCount;
  @override
  @JsonKey(name: 'user')
  final UserProfileData user;
  final List<FollowersData>? _follower;
  @override
  @JsonKey(name: 'follower')
  List<FollowersData>? get follower {
    final value = _follower;
    if (value == null) return null;
    if (_follower is EqualUnmodifiableListView) return _follower;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FollowingsData>? _followings;
  @override
  @JsonKey(name: 'followings')
  List<FollowingsData>? get followings {
    final value = _followings;
    if (value == null) return null;
    if (_followings is EqualUnmodifiableListView) return _followings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImageDataProfile>? _image;
  @override
  @JsonKey(name: 'image')
  List<ImageDataProfile>? get image {
    final value = _image;
    if (value == null) return null;
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileData(objectCount: $objectCount, user: $user, follower: $follower, followings: $followings, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataImpl &&
            (identical(other.objectCount, objectCount) ||
                other.objectCount == objectCount) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._follower, _follower) &&
            const DeepCollectionEquality()
                .equals(other._followings, _followings) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      objectCount,
      user,
      const DeepCollectionEquality().hash(_follower),
      const DeepCollectionEquality().hash(_followings),
      const DeepCollectionEquality().hash(_image));

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      __$$ProfileDataImplCopyWithImpl<_$ProfileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileData implements ProfileData {
  factory _ProfileData(
          {@JsonKey(name: 'objectCount') required final ObjectCount objectCount,
          @JsonKey(name: 'user') required final UserProfileData user,
          @JsonKey(name: 'follower') final List<FollowersData>? follower,
          @JsonKey(name: 'followings') final List<FollowingsData>? followings,
          @JsonKey(name: 'image') final List<ImageDataProfile>? image}) =
      _$ProfileDataImpl;

  factory _ProfileData.fromJson(Map<String, dynamic> json) =
      _$ProfileDataImpl.fromJson;

  @override
  @JsonKey(name: 'objectCount')
  ObjectCount get objectCount;
  @override
  @JsonKey(name: 'user')
  UserProfileData get user;
  @override
  @JsonKey(name: 'follower')
  List<FollowersData>? get follower;
  @override
  @JsonKey(name: 'followings')
  List<FollowingsData>? get followings;
  @override
  @JsonKey(name: 'image')
  List<ImageDataProfile>? get image;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
