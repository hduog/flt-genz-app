// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CommentReplyGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentReplyGet _$CommentReplyGetFromJson(Map<String, dynamic> json) {
  return _CommentReplyGet.fromJson(json);
}

/// @nodoc
mixin _$CommentReplyGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentCmt')
  String get contentCmt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'account')
  AccountCommentFullGet get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'accountMention')
  AccountCommentFullGet get accountMention =>
      throw _privateConstructorUsedError;

  /// Serializes this CommentReplyGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentReplyGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentReplyGetCopyWith<CommentReplyGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentReplyGetCopyWith<$Res> {
  factory $CommentReplyGetCopyWith(
          CommentReplyGet value, $Res Function(CommentReplyGet) then) =
      _$CommentReplyGetCopyWithImpl<$Res, CommentReplyGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'contentCmt') String contentCmt,
      @JsonKey(name: 'created_at') String created_at,
      @JsonKey(name: 'account') AccountCommentFullGet account,
      @JsonKey(name: 'accountMention') AccountCommentFullGet accountMention});

  $AccountCommentFullGetCopyWith<$Res> get account;
  $AccountCommentFullGetCopyWith<$Res> get accountMention;
}

/// @nodoc
class _$CommentReplyGetCopyWithImpl<$Res, $Val extends CommentReplyGet>
    implements $CommentReplyGetCopyWith<$Res> {
  _$CommentReplyGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentReplyGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentCmt = null,
    Object? created_at = null,
    Object? account = null,
    Object? accountMention = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentCmt: null == contentCmt
          ? _value.contentCmt
          : contentCmt // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountCommentFullGet,
      accountMention: null == accountMention
          ? _value.accountMention
          : accountMention // ignore: cast_nullable_to_non_nullable
              as AccountCommentFullGet,
    ) as $Val);
  }

  /// Create a copy of CommentReplyGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCommentFullGetCopyWith<$Res> get account {
    return $AccountCommentFullGetCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  /// Create a copy of CommentReplyGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCommentFullGetCopyWith<$Res> get accountMention {
    return $AccountCommentFullGetCopyWith<$Res>(_value.accountMention, (value) {
      return _then(_value.copyWith(accountMention: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentReplyGetImplCopyWith<$Res>
    implements $CommentReplyGetCopyWith<$Res> {
  factory _$$CommentReplyGetImplCopyWith(_$CommentReplyGetImpl value,
          $Res Function(_$CommentReplyGetImpl) then) =
      __$$CommentReplyGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'contentCmt') String contentCmt,
      @JsonKey(name: 'created_at') String created_at,
      @JsonKey(name: 'account') AccountCommentFullGet account,
      @JsonKey(name: 'accountMention') AccountCommentFullGet accountMention});

  @override
  $AccountCommentFullGetCopyWith<$Res> get account;
  @override
  $AccountCommentFullGetCopyWith<$Res> get accountMention;
}

/// @nodoc
class __$$CommentReplyGetImplCopyWithImpl<$Res>
    extends _$CommentReplyGetCopyWithImpl<$Res, _$CommentReplyGetImpl>
    implements _$$CommentReplyGetImplCopyWith<$Res> {
  __$$CommentReplyGetImplCopyWithImpl(
      _$CommentReplyGetImpl _value, $Res Function(_$CommentReplyGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentReplyGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentCmt = null,
    Object? created_at = null,
    Object? account = null,
    Object? accountMention = null,
  }) {
    return _then(_$CommentReplyGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentCmt: null == contentCmt
          ? _value.contentCmt
          : contentCmt // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountCommentFullGet,
      accountMention: null == accountMention
          ? _value.accountMention
          : accountMention // ignore: cast_nullable_to_non_nullable
              as AccountCommentFullGet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentReplyGetImpl implements _CommentReplyGet {
  _$CommentReplyGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'contentCmt') required this.contentCmt,
      @JsonKey(name: 'created_at') required this.created_at,
      @JsonKey(name: 'account') required this.account,
      @JsonKey(name: 'accountMention') required this.accountMention});

  factory _$CommentReplyGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentReplyGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'contentCmt')
  final String contentCmt;
  @override
  @JsonKey(name: 'created_at')
  final String created_at;
  @override
  @JsonKey(name: 'account')
  final AccountCommentFullGet account;
  @override
  @JsonKey(name: 'accountMention')
  final AccountCommentFullGet accountMention;

  @override
  String toString() {
    return 'CommentReplyGet(id: $id, contentCmt: $contentCmt, created_at: $created_at, account: $account, accountMention: $accountMention)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentReplyGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contentCmt, contentCmt) ||
                other.contentCmt == contentCmt) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.accountMention, accountMention) ||
                other.accountMention == accountMention));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, contentCmt, created_at, account, accountMention);

  /// Create a copy of CommentReplyGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentReplyGetImplCopyWith<_$CommentReplyGetImpl> get copyWith =>
      __$$CommentReplyGetImplCopyWithImpl<_$CommentReplyGetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentReplyGetImplToJson(
      this,
    );
  }
}

abstract class _CommentReplyGet implements CommentReplyGet {
  factory _CommentReplyGet(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'contentCmt') required final String contentCmt,
      @JsonKey(name: 'created_at') required final String created_at,
      @JsonKey(name: 'account') required final AccountCommentFullGet account,
      @JsonKey(name: 'accountMention')
      required final AccountCommentFullGet
          accountMention}) = _$CommentReplyGetImpl;

  factory _CommentReplyGet.fromJson(Map<String, dynamic> json) =
      _$CommentReplyGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'contentCmt')
  String get contentCmt;
  @override
  @JsonKey(name: 'created_at')
  String get created_at;
  @override
  @JsonKey(name: 'account')
  AccountCommentFullGet get account;
  @override
  @JsonKey(name: 'accountMention')
  AccountCommentFullGet get accountMention;

  /// Create a copy of CommentReplyGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentReplyGetImplCopyWith<_$CommentReplyGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
