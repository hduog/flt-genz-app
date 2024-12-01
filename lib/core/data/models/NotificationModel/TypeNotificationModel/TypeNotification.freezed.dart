// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TypeNotification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TypeNotification _$TypeNotificationFromJson(Map<String, dynamic> json) {
  return _TypeNotification.fromJson(json);
}

/// @nodoc
mixin _$TypeNotification {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'typeName')
  String get typeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailNoti')
  String? get thumbnailNoti => throw _privateConstructorUsedError;

  /// Serializes this TypeNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeNotificationCopyWith<TypeNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeNotificationCopyWith<$Res> {
  factory $TypeNotificationCopyWith(
          TypeNotification value, $Res Function(TypeNotification) then) =
      _$TypeNotificationCopyWithImpl<$Res, TypeNotification>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'typeName') String typeName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'thumbnailNoti') String? thumbnailNoti});
}

/// @nodoc
class _$TypeNotificationCopyWithImpl<$Res, $Val extends TypeNotification>
    implements $TypeNotificationCopyWith<$Res> {
  _$TypeNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
    Object? description = freezed,
    Object? thumbnailNoti = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailNoti: freezed == thumbnailNoti
          ? _value.thumbnailNoti
          : thumbnailNoti // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeNotificationImplCopyWith<$Res>
    implements $TypeNotificationCopyWith<$Res> {
  factory _$$TypeNotificationImplCopyWith(_$TypeNotificationImpl value,
          $Res Function(_$TypeNotificationImpl) then) =
      __$$TypeNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'typeName') String typeName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'thumbnailNoti') String? thumbnailNoti});
}

/// @nodoc
class __$$TypeNotificationImplCopyWithImpl<$Res>
    extends _$TypeNotificationCopyWithImpl<$Res, _$TypeNotificationImpl>
    implements _$$TypeNotificationImplCopyWith<$Res> {
  __$$TypeNotificationImplCopyWithImpl(_$TypeNotificationImpl _value,
      $Res Function(_$TypeNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
    Object? description = freezed,
    Object? thumbnailNoti = freezed,
  }) {
    return _then(_$TypeNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailNoti: freezed == thumbnailNoti
          ? _value.thumbnailNoti
          : thumbnailNoti // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeNotificationImpl implements _TypeNotification {
  _$TypeNotificationImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'typeName') required this.typeName,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'thumbnailNoti') this.thumbnailNoti});

  factory _$TypeNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeNotificationImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'typeName')
  final String typeName;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'thumbnailNoti')
  final String? thumbnailNoti;

  @override
  String toString() {
    return 'TypeNotification(id: $id, typeName: $typeName, description: $description, thumbnailNoti: $thumbnailNoti)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailNoti, thumbnailNoti) ||
                other.thumbnailNoti == thumbnailNoti));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, typeName, description, thumbnailNoti);

  /// Create a copy of TypeNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeNotificationImplCopyWith<_$TypeNotificationImpl> get copyWith =>
      __$$TypeNotificationImplCopyWithImpl<_$TypeNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeNotificationImplToJson(
      this,
    );
  }
}

abstract class _TypeNotification implements TypeNotification {
  factory _TypeNotification(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'typeName') required final String typeName,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'thumbnailNoti') final String? thumbnailNoti}) =
      _$TypeNotificationImpl;

  factory _TypeNotification.fromJson(Map<String, dynamic> json) =
      _$TypeNotificationImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'typeName')
  String get typeName;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'thumbnailNoti')
  String? get thumbnailNoti;

  /// Create a copy of TypeNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeNotificationImplCopyWith<_$TypeNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
