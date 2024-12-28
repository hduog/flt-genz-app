// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'MessageAIPost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageAIPost _$MessageAIPostFromJson(Map<String, dynamic> json) {
  return _MessageAIPost.fromJson(json);
}

/// @nodoc
mixin _$MessageAIPost {
  @JsonKey(name: 'contentText')
  String get contentText => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomId')
  String get roomId => throw _privateConstructorUsedError;

  /// Serializes this MessageAIPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageAIPostCopyWith<MessageAIPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAIPostCopyWith<$Res> {
  factory $MessageAIPostCopyWith(
          MessageAIPost value, $Res Function(MessageAIPost) then) =
      _$MessageAIPostCopyWithImpl<$Res, MessageAIPost>;
  @useResult
  $Res call(
      {@JsonKey(name: 'contentText') String contentText,
      @JsonKey(name: 'roomId') String roomId});
}

/// @nodoc
class _$MessageAIPostCopyWithImpl<$Res, $Val extends MessageAIPost>
    implements $MessageAIPostCopyWith<$Res> {
  _$MessageAIPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentText = null,
    Object? roomId = null,
  }) {
    return _then(_value.copyWith(
      contentText: null == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageAIPostImplCopyWith<$Res>
    implements $MessageAIPostCopyWith<$Res> {
  factory _$$MessageAIPostImplCopyWith(
          _$MessageAIPostImpl value, $Res Function(_$MessageAIPostImpl) then) =
      __$$MessageAIPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'contentText') String contentText,
      @JsonKey(name: 'roomId') String roomId});
}

/// @nodoc
class __$$MessageAIPostImplCopyWithImpl<$Res>
    extends _$MessageAIPostCopyWithImpl<$Res, _$MessageAIPostImpl>
    implements _$$MessageAIPostImplCopyWith<$Res> {
  __$$MessageAIPostImplCopyWithImpl(
      _$MessageAIPostImpl _value, $Res Function(_$MessageAIPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentText = null,
    Object? roomId = null,
  }) {
    return _then(_$MessageAIPostImpl(
      contentText: null == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageAIPostImpl implements _MessageAIPost {
  _$MessageAIPostImpl(
      {@JsonKey(name: 'contentText') required this.contentText,
      @JsonKey(name: 'roomId') required this.roomId});

  factory _$MessageAIPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageAIPostImplFromJson(json);

  @override
  @JsonKey(name: 'contentText')
  final String contentText;
  @override
  @JsonKey(name: 'roomId')
  final String roomId;

  @override
  String toString() {
    return 'MessageAIPost(contentText: $contentText, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAIPostImpl &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contentText, roomId);

  /// Create a copy of MessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAIPostImplCopyWith<_$MessageAIPostImpl> get copyWith =>
      __$$MessageAIPostImplCopyWithImpl<_$MessageAIPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageAIPostImplToJson(
      this,
    );
  }
}

abstract class _MessageAIPost implements MessageAIPost {
  factory _MessageAIPost(
          {@JsonKey(name: 'contentText') required final String contentText,
          @JsonKey(name: 'roomId') required final String roomId}) =
      _$MessageAIPostImpl;

  factory _MessageAIPost.fromJson(Map<String, dynamic> json) =
      _$MessageAIPostImpl.fromJson;

  @override
  @JsonKey(name: 'contentText')
  String get contentText;
  @override
  @JsonKey(name: 'roomId')
  String get roomId;

  /// Create a copy of MessageAIPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageAIPostImplCopyWith<_$MessageAIPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
