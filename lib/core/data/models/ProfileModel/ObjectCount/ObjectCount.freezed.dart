// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ObjectCount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ObjectCount _$ObjectCountFromJson(Map<String, dynamic> json) {
  return _ObjectCount.fromJson(json);
}

/// @nodoc
mixin _$ObjectCount {
  @JsonKey(name: 'posts')
  int? get posts => throw _privateConstructorUsedError;
  @JsonKey(name: 'followers')
  int? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: 'followings')
  int? get followings => throw _privateConstructorUsedError;
  @JsonKey(name: 'postShares')
  int? get postShares => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  int? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'RequestFollow')
  int? get RequestFollow => throw _privateConstructorUsedError;

  /// Serializes this ObjectCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ObjectCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ObjectCountCopyWith<ObjectCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectCountCopyWith<$Res> {
  factory $ObjectCountCopyWith(
          ObjectCount value, $Res Function(ObjectCount) then) =
      _$ObjectCountCopyWithImpl<$Res, ObjectCount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'posts') int? posts,
      @JsonKey(name: 'followers') int? followers,
      @JsonKey(name: 'followings') int? followings,
      @JsonKey(name: 'postShares') int? postShares,
      @JsonKey(name: 'images') int? images,
      @JsonKey(name: 'RequestFollow') int? RequestFollow});
}

/// @nodoc
class _$ObjectCountCopyWithImpl<$Res, $Val extends ObjectCount>
    implements $ObjectCountCopyWith<$Res> {
  _$ObjectCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ObjectCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
    Object? followers = freezed,
    Object? followings = freezed,
    Object? postShares = freezed,
    Object? images = freezed,
    Object? RequestFollow = freezed,
  }) {
    return _then(_value.copyWith(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      followings: freezed == followings
          ? _value.followings
          : followings // ignore: cast_nullable_to_non_nullable
              as int?,
      postShares: freezed == postShares
          ? _value.postShares
          : postShares // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as int?,
      RequestFollow: freezed == RequestFollow
          ? _value.RequestFollow
          : RequestFollow // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ObjectCountImplCopyWith<$Res>
    implements $ObjectCountCopyWith<$Res> {
  factory _$$ObjectCountImplCopyWith(
          _$ObjectCountImpl value, $Res Function(_$ObjectCountImpl) then) =
      __$$ObjectCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'posts') int? posts,
      @JsonKey(name: 'followers') int? followers,
      @JsonKey(name: 'followings') int? followings,
      @JsonKey(name: 'postShares') int? postShares,
      @JsonKey(name: 'images') int? images,
      @JsonKey(name: 'RequestFollow') int? RequestFollow});
}

/// @nodoc
class __$$ObjectCountImplCopyWithImpl<$Res>
    extends _$ObjectCountCopyWithImpl<$Res, _$ObjectCountImpl>
    implements _$$ObjectCountImplCopyWith<$Res> {
  __$$ObjectCountImplCopyWithImpl(
      _$ObjectCountImpl _value, $Res Function(_$ObjectCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObjectCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
    Object? followers = freezed,
    Object? followings = freezed,
    Object? postShares = freezed,
    Object? images = freezed,
    Object? RequestFollow = freezed,
  }) {
    return _then(_$ObjectCountImpl(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      followings: freezed == followings
          ? _value.followings
          : followings // ignore: cast_nullable_to_non_nullable
              as int?,
      postShares: freezed == postShares
          ? _value.postShares
          : postShares // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as int?,
      RequestFollow: freezed == RequestFollow
          ? _value.RequestFollow
          : RequestFollow // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ObjectCountImpl implements _ObjectCount {
  _$ObjectCountImpl(
      {@JsonKey(name: 'posts') this.posts,
      @JsonKey(name: 'followers') this.followers,
      @JsonKey(name: 'followings') this.followings,
      @JsonKey(name: 'postShares') this.postShares,
      @JsonKey(name: 'images') this.images,
      @JsonKey(name: 'RequestFollow') this.RequestFollow});

  factory _$ObjectCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObjectCountImplFromJson(json);

  @override
  @JsonKey(name: 'posts')
  final int? posts;
  @override
  @JsonKey(name: 'followers')
  final int? followers;
  @override
  @JsonKey(name: 'followings')
  final int? followings;
  @override
  @JsonKey(name: 'postShares')
  final int? postShares;
  @override
  @JsonKey(name: 'images')
  final int? images;
  @override
  @JsonKey(name: 'RequestFollow')
  final int? RequestFollow;

  @override
  String toString() {
    return 'ObjectCount(posts: $posts, followers: $followers, followings: $followings, postShares: $postShares, images: $images, RequestFollow: $RequestFollow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectCountImpl &&
            (identical(other.posts, posts) || other.posts == posts) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.followings, followings) ||
                other.followings == followings) &&
            (identical(other.postShares, postShares) ||
                other.postShares == postShares) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.RequestFollow, RequestFollow) ||
                other.RequestFollow == RequestFollow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, posts, followers, followings,
      postShares, images, RequestFollow);

  /// Create a copy of ObjectCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectCountImplCopyWith<_$ObjectCountImpl> get copyWith =>
      __$$ObjectCountImplCopyWithImpl<_$ObjectCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObjectCountImplToJson(
      this,
    );
  }
}

abstract class _ObjectCount implements ObjectCount {
  factory _ObjectCount(
          {@JsonKey(name: 'posts') final int? posts,
          @JsonKey(name: 'followers') final int? followers,
          @JsonKey(name: 'followings') final int? followings,
          @JsonKey(name: 'postShares') final int? postShares,
          @JsonKey(name: 'images') final int? images,
          @JsonKey(name: 'RequestFollow') final int? RequestFollow}) =
      _$ObjectCountImpl;

  factory _ObjectCount.fromJson(Map<String, dynamic> json) =
      _$ObjectCountImpl.fromJson;

  @override
  @JsonKey(name: 'posts')
  int? get posts;
  @override
  @JsonKey(name: 'followers')
  int? get followers;
  @override
  @JsonKey(name: 'followings')
  int? get followings;
  @override
  @JsonKey(name: 'postShares')
  int? get postShares;
  @override
  @JsonKey(name: 'images')
  int? get images;
  @override
  @JsonKey(name: 'RequestFollow')
  int? get RequestFollow;

  /// Create a copy of ObjectCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ObjectCountImplCopyWith<_$ObjectCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
