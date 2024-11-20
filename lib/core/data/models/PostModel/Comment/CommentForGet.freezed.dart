// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CommentForGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentForGet _$CommentForGetFromJson(Map<String, dynamic> json) {
  return _CommentForGet.fromJson(json);
}

/// @nodoc
mixin _$CommentForGet {
  @JsonKey(name: 'account')
  AccountComment get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;

  /// Serializes this CommentForGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentForGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentForGetCopyWith<CommentForGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentForGetCopyWith<$Res> {
  factory $CommentForGetCopyWith(
          CommentForGet value, $Res Function(CommentForGet) then) =
      _$CommentForGetCopyWithImpl<$Res, CommentForGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'account') AccountComment account,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'created_at') String? created_at});

  $AccountCommentCopyWith<$Res> get account;
}

/// @nodoc
class _$CommentForGetCopyWithImpl<$Res, $Val extends CommentForGet>
    implements $CommentForGetCopyWith<$Res> {
  _$CommentForGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentForGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? content = null,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountComment,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CommentForGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCommentCopyWith<$Res> get account {
    return $AccountCommentCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentForGetImplCopyWith<$Res>
    implements $CommentForGetCopyWith<$Res> {
  factory _$$CommentForGetImplCopyWith(
          _$CommentForGetImpl value, $Res Function(_$CommentForGetImpl) then) =
      __$$CommentForGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'account') AccountComment account,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'created_at') String? created_at});

  @override
  $AccountCommentCopyWith<$Res> get account;
}

/// @nodoc
class __$$CommentForGetImplCopyWithImpl<$Res>
    extends _$CommentForGetCopyWithImpl<$Res, _$CommentForGetImpl>
    implements _$$CommentForGetImplCopyWith<$Res> {
  __$$CommentForGetImplCopyWithImpl(
      _$CommentForGetImpl _value, $Res Function(_$CommentForGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentForGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? content = null,
    Object? created_at = freezed,
  }) {
    return _then(_$CommentForGetImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountComment,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentForGetImpl implements _CommentForGet {
  _$CommentForGetImpl(
      {@JsonKey(name: 'account') required this.account,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'created_at') this.created_at});

  factory _$CommentForGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentForGetImplFromJson(json);

  @override
  @JsonKey(name: 'account')
  final AccountComment account;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;

  @override
  String toString() {
    return 'CommentForGet(account: $account, content: $content, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentForGetImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, account, content, created_at);

  /// Create a copy of CommentForGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentForGetImplCopyWith<_$CommentForGetImpl> get copyWith =>
      __$$CommentForGetImplCopyWithImpl<_$CommentForGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentForGetImplToJson(
      this,
    );
  }
}

abstract class _CommentForGet implements CommentForGet {
  factory _CommentForGet(
          {@JsonKey(name: 'account') required final AccountComment account,
          @JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'created_at') final String? created_at}) =
      _$CommentForGetImpl;

  factory _CommentForGet.fromJson(Map<String, dynamic> json) =
      _$CommentForGetImpl.fromJson;

  @override
  @JsonKey(name: 'account')
  AccountComment get account;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;

  /// Create a copy of CommentForGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentForGetImplCopyWith<_$CommentForGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
