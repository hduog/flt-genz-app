// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'NotificationData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'typeNotification')
  TypeNotification? get typeNotification => throw _privateConstructorUsedError;
  @JsonKey(name: 'postId')
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentId')
  String? get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'followerId')
  String? get followerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'messageNotifications')
  String? get messageNotifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'postShareId')
  String? get postShareId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reactionId')
  String? get reactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updated_at => throw _privateConstructorUsedError;

  /// Serializes this NotificationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res, NotificationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'typeNotification') TypeNotification? typeNotification,
      @JsonKey(name: 'postId') String? postId,
      @JsonKey(name: 'commentId') String? commentId,
      @JsonKey(name: 'followerId') String? followerId,
      @JsonKey(name: 'messageNotifications') String? messageNotifications,
      @JsonKey(name: 'postShareId') String? postShareId,
      @JsonKey(name: 'reactionId') String? reactionId,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'updated_at') String? updated_at});

  $TypeNotificationCopyWith<$Res>? get typeNotification;
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res, $Val extends NotificationData>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeNotification = freezed,
    Object? postId = freezed,
    Object? commentId = freezed,
    Object? followerId = freezed,
    Object? messageNotifications = freezed,
    Object? postShareId = freezed,
    Object? reactionId = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      typeNotification: freezed == typeNotification
          ? _value.typeNotification
          : typeNotification // ignore: cast_nullable_to_non_nullable
              as TypeNotification?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      followerId: freezed == followerId
          ? _value.followerId
          : followerId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageNotifications: freezed == messageNotifications
          ? _value.messageNotifications
          : messageNotifications // ignore: cast_nullable_to_non_nullable
              as String?,
      postShareId: freezed == postShareId
          ? _value.postShareId
          : postShareId // ignore: cast_nullable_to_non_nullable
              as String?,
      reactionId: freezed == reactionId
          ? _value.reactionId
          : reactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TypeNotificationCopyWith<$Res>? get typeNotification {
    if (_value.typeNotification == null) {
      return null;
    }

    return $TypeNotificationCopyWith<$Res>(_value.typeNotification!, (value) {
      return _then(_value.copyWith(typeNotification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationDataImplCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$NotificationDataImplCopyWith(_$NotificationDataImpl value,
          $Res Function(_$NotificationDataImpl) then) =
      __$$NotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'typeNotification') TypeNotification? typeNotification,
      @JsonKey(name: 'postId') String? postId,
      @JsonKey(name: 'commentId') String? commentId,
      @JsonKey(name: 'followerId') String? followerId,
      @JsonKey(name: 'messageNotifications') String? messageNotifications,
      @JsonKey(name: 'postShareId') String? postShareId,
      @JsonKey(name: 'reactionId') String? reactionId,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'updated_at') String? updated_at});

  @override
  $TypeNotificationCopyWith<$Res>? get typeNotification;
}

/// @nodoc
class __$$NotificationDataImplCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res, _$NotificationDataImpl>
    implements _$$NotificationDataImplCopyWith<$Res> {
  __$$NotificationDataImplCopyWithImpl(_$NotificationDataImpl _value,
      $Res Function(_$NotificationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeNotification = freezed,
    Object? postId = freezed,
    Object? commentId = freezed,
    Object? followerId = freezed,
    Object? messageNotifications = freezed,
    Object? postShareId = freezed,
    Object? reactionId = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$NotificationDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      typeNotification: freezed == typeNotification
          ? _value.typeNotification
          : typeNotification // ignore: cast_nullable_to_non_nullable
              as TypeNotification?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      followerId: freezed == followerId
          ? _value.followerId
          : followerId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageNotifications: freezed == messageNotifications
          ? _value.messageNotifications
          : messageNotifications // ignore: cast_nullable_to_non_nullable
              as String?,
      postShareId: freezed == postShareId
          ? _value.postShareId
          : postShareId // ignore: cast_nullable_to_non_nullable
              as String?,
      reactionId: freezed == reactionId
          ? _value.reactionId
          : reactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataImpl implements _NotificationData {
  _$NotificationDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'typeNotification') this.typeNotification,
      @JsonKey(name: 'postId') this.postId,
      @JsonKey(name: 'commentId') this.commentId,
      @JsonKey(name: 'followerId') this.followerId,
      @JsonKey(name: 'messageNotifications') this.messageNotifications,
      @JsonKey(name: 'postShareId') this.postShareId,
      @JsonKey(name: 'reactionId') this.reactionId,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'updated_at') this.updated_at});

  factory _$NotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'typeNotification')
  final TypeNotification? typeNotification;
  @override
  @JsonKey(name: 'postId')
  final String? postId;
  @override
  @JsonKey(name: 'commentId')
  final String? commentId;
  @override
  @JsonKey(name: 'followerId')
  final String? followerId;
  @override
  @JsonKey(name: 'messageNotifications')
  final String? messageNotifications;
  @override
  @JsonKey(name: 'postShareId')
  final String? postShareId;
  @override
  @JsonKey(name: 'reactionId')
  final String? reactionId;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'updated_at')
  final String? updated_at;

  @override
  String toString() {
    return 'NotificationData(id: $id, typeNotification: $typeNotification, postId: $postId, commentId: $commentId, followerId: $followerId, messageNotifications: $messageNotifications, postShareId: $postShareId, reactionId: $reactionId, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeNotification, typeNotification) ||
                other.typeNotification == typeNotification) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.followerId, followerId) ||
                other.followerId == followerId) &&
            (identical(other.messageNotifications, messageNotifications) ||
                other.messageNotifications == messageNotifications) &&
            (identical(other.postShareId, postShareId) ||
                other.postShareId == postShareId) &&
            (identical(other.reactionId, reactionId) ||
                other.reactionId == reactionId) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      typeNotification,
      postId,
      commentId,
      followerId,
      messageNotifications,
      postShareId,
      reactionId,
      created_at,
      updated_at);

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      __$$NotificationDataImplCopyWithImpl<_$NotificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataImplToJson(
      this,
    );
  }
}

abstract class _NotificationData implements NotificationData {
  factory _NotificationData(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'typeNotification')
      final TypeNotification? typeNotification,
      @JsonKey(name: 'postId') final String? postId,
      @JsonKey(name: 'commentId') final String? commentId,
      @JsonKey(name: 'followerId') final String? followerId,
      @JsonKey(name: 'messageNotifications') final String? messageNotifications,
      @JsonKey(name: 'postShareId') final String? postShareId,
      @JsonKey(name: 'reactionId') final String? reactionId,
      @JsonKey(name: 'created_at') final String? created_at,
      @JsonKey(name: 'updated_at')
      final String? updated_at}) = _$NotificationDataImpl;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$NotificationDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'typeNotification')
  TypeNotification? get typeNotification;
  @override
  @JsonKey(name: 'postId')
  String? get postId;
  @override
  @JsonKey(name: 'commentId')
  String? get commentId;
  @override
  @JsonKey(name: 'followerId')
  String? get followerId;
  @override
  @JsonKey(name: 'messageNotifications')
  String? get messageNotifications;
  @override
  @JsonKey(name: 'postShareId')
  String? get postShareId;
  @override
  @JsonKey(name: 'reactionId')
  String? get reactionId;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'updated_at')
  String? get updated_at;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
