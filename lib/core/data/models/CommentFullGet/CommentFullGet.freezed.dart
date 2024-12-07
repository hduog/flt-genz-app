// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CommentFullGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentFullGet _$CommentFullGetFromJson(Map<String, dynamic> json) {
  return _CommentFullGet.fromJson(json);
}

/// @nodoc
mixin _$CommentFullGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentCmt')
  String? get contentCmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'accountId')
  String? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'account')
  AccountCommentFullGet get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentReply')
  List<CommentReplyGet>? get commentReply => throw _privateConstructorUsedError;

  /// Serializes this CommentFullGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentFullGetCopyWith<CommentFullGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFullGetCopyWith<$Res> {
  factory $CommentFullGetCopyWith(
          CommentFullGet value, $Res Function(CommentFullGet) then) =
      _$CommentFullGetCopyWithImpl<$Res, CommentFullGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'contentCmt') String? contentCmt,
      @JsonKey(name: 'accountId') String? accountId,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'account') AccountCommentFullGet account,
      @JsonKey(name: 'commentReply') List<CommentReplyGet>? commentReply});

  $AccountCommentFullGetCopyWith<$Res> get account;
}

/// @nodoc
class _$CommentFullGetCopyWithImpl<$Res, $Val extends CommentFullGet>
    implements $CommentFullGetCopyWith<$Res> {
  _$CommentFullGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentCmt = freezed,
    Object? accountId = freezed,
    Object? created_at = freezed,
    Object? account = null,
    Object? commentReply = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentCmt: freezed == contentCmt
          ? _value.contentCmt
          : contentCmt // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountCommentFullGet,
      commentReply: freezed == commentReply
          ? _value.commentReply
          : commentReply // ignore: cast_nullable_to_non_nullable
              as List<CommentReplyGet>?,
    ) as $Val);
  }

  /// Create a copy of CommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCommentFullGetCopyWith<$Res> get account {
    return $AccountCommentFullGetCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentFullGetImplCopyWith<$Res>
    implements $CommentFullGetCopyWith<$Res> {
  factory _$$CommentFullGetImplCopyWith(_$CommentFullGetImpl value,
          $Res Function(_$CommentFullGetImpl) then) =
      __$$CommentFullGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'contentCmt') String? contentCmt,
      @JsonKey(name: 'accountId') String? accountId,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'account') AccountCommentFullGet account,
      @JsonKey(name: 'commentReply') List<CommentReplyGet>? commentReply});

  @override
  $AccountCommentFullGetCopyWith<$Res> get account;
}

/// @nodoc
class __$$CommentFullGetImplCopyWithImpl<$Res>
    extends _$CommentFullGetCopyWithImpl<$Res, _$CommentFullGetImpl>
    implements _$$CommentFullGetImplCopyWith<$Res> {
  __$$CommentFullGetImplCopyWithImpl(
      _$CommentFullGetImpl _value, $Res Function(_$CommentFullGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentCmt = freezed,
    Object? accountId = freezed,
    Object? created_at = freezed,
    Object? account = null,
    Object? commentReply = freezed,
  }) {
    return _then(_$CommentFullGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentCmt: freezed == contentCmt
          ? _value.contentCmt
          : contentCmt // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountCommentFullGet,
      commentReply: freezed == commentReply
          ? _value._commentReply
          : commentReply // ignore: cast_nullable_to_non_nullable
              as List<CommentReplyGet>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentFullGetImpl implements _CommentFullGet {
  _$CommentFullGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'contentCmt') this.contentCmt,
      @JsonKey(name: 'accountId') this.accountId,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'account') required this.account,
      @JsonKey(name: 'commentReply') final List<CommentReplyGet>? commentReply})
      : _commentReply = commentReply;

  factory _$CommentFullGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentFullGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'contentCmt')
  final String? contentCmt;
  @override
  @JsonKey(name: 'accountId')
  final String? accountId;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'account')
  final AccountCommentFullGet account;
  final List<CommentReplyGet>? _commentReply;
  @override
  @JsonKey(name: 'commentReply')
  List<CommentReplyGet>? get commentReply {
    final value = _commentReply;
    if (value == null) return null;
    if (_commentReply is EqualUnmodifiableListView) return _commentReply;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentFullGet(id: $id, contentCmt: $contentCmt, accountId: $accountId, created_at: $created_at, account: $account, commentReply: $commentReply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentFullGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contentCmt, contentCmt) ||
                other.contentCmt == contentCmt) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality()
                .equals(other._commentReply, _commentReply));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, contentCmt, accountId,
      created_at, account, const DeepCollectionEquality().hash(_commentReply));

  /// Create a copy of CommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentFullGetImplCopyWith<_$CommentFullGetImpl> get copyWith =>
      __$$CommentFullGetImplCopyWithImpl<_$CommentFullGetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentFullGetImplToJson(
      this,
    );
  }
}

abstract class _CommentFullGet implements CommentFullGet {
  factory _CommentFullGet(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'contentCmt') final String? contentCmt,
      @JsonKey(name: 'accountId') final String? accountId,
      @JsonKey(name: 'created_at') final String? created_at,
      @JsonKey(name: 'account') required final AccountCommentFullGet account,
      @JsonKey(name: 'commentReply')
      final List<CommentReplyGet>? commentReply}) = _$CommentFullGetImpl;

  factory _CommentFullGet.fromJson(Map<String, dynamic> json) =
      _$CommentFullGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'contentCmt')
  String? get contentCmt;
  @override
  @JsonKey(name: 'accountId')
  String? get accountId;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'account')
  AccountCommentFullGet get account;
  @override
  @JsonKey(name: 'commentReply')
  List<CommentReplyGet>? get commentReply;

  /// Create a copy of CommentFullGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentFullGetImplCopyWith<_$CommentFullGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
