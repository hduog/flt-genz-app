// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RelatedBlog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RelatedBlog _$RelatedBlogFromJson(Map<String, dynamic> json) {
  return _RelatedBlog.fromJson(json);
}

/// @nodoc
mixin _$RelatedBlog {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailBlog')
  String? get thumbnailBlog => throw _privateConstructorUsedError;
  @JsonKey(name: 'account')
  AccountBlog? get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;

  /// Serializes this RelatedBlog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelatedBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelatedBlogCopyWith<RelatedBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedBlogCopyWith<$Res> {
  factory $RelatedBlogCopyWith(
          RelatedBlog value, $Res Function(RelatedBlog) then) =
      _$RelatedBlogCopyWithImpl<$Res, RelatedBlog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'thumbnailBlog') String? thumbnailBlog,
      @JsonKey(name: 'account') AccountBlog? account,
      @JsonKey(name: 'created_at') String? created_at});

  $AccountBlogCopyWith<$Res>? get account;
}

/// @nodoc
class _$RelatedBlogCopyWithImpl<$Res, $Val extends RelatedBlog>
    implements $RelatedBlogCopyWith<$Res> {
  _$RelatedBlogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelatedBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? thumbnailBlog = freezed,
    Object? account = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailBlog: freezed == thumbnailBlog
          ? _value.thumbnailBlog
          : thumbnailBlog // ignore: cast_nullable_to_non_nullable
              as String?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountBlog?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RelatedBlog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountBlogCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountBlogCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RelatedBlogImplCopyWith<$Res>
    implements $RelatedBlogCopyWith<$Res> {
  factory _$$RelatedBlogImplCopyWith(
          _$RelatedBlogImpl value, $Res Function(_$RelatedBlogImpl) then) =
      __$$RelatedBlogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'thumbnailBlog') String? thumbnailBlog,
      @JsonKey(name: 'account') AccountBlog? account,
      @JsonKey(name: 'created_at') String? created_at});

  @override
  $AccountBlogCopyWith<$Res>? get account;
}

/// @nodoc
class __$$RelatedBlogImplCopyWithImpl<$Res>
    extends _$RelatedBlogCopyWithImpl<$Res, _$RelatedBlogImpl>
    implements _$$RelatedBlogImplCopyWith<$Res> {
  __$$RelatedBlogImplCopyWithImpl(
      _$RelatedBlogImpl _value, $Res Function(_$RelatedBlogImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelatedBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? thumbnailBlog = freezed,
    Object? account = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$RelatedBlogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailBlog: freezed == thumbnailBlog
          ? _value.thumbnailBlog
          : thumbnailBlog // ignore: cast_nullable_to_non_nullable
              as String?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountBlog?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedBlogImpl implements _RelatedBlog {
  _$RelatedBlogImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'thumbnailBlog') this.thumbnailBlog,
      @JsonKey(name: 'account') this.account,
      @JsonKey(name: 'created_at') this.created_at});

  factory _$RelatedBlogImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedBlogImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'thumbnailBlog')
  final String? thumbnailBlog;
  @override
  @JsonKey(name: 'account')
  final AccountBlog? account;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;

  @override
  String toString() {
    return 'RelatedBlog(id: $id, title: $title, body: $body, thumbnailBlog: $thumbnailBlog, account: $account, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedBlogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.thumbnailBlog, thumbnailBlog) ||
                other.thumbnailBlog == thumbnailBlog) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, body, thumbnailBlog, account, created_at);

  /// Create a copy of RelatedBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedBlogImplCopyWith<_$RelatedBlogImpl> get copyWith =>
      __$$RelatedBlogImplCopyWithImpl<_$RelatedBlogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedBlogImplToJson(
      this,
    );
  }
}

abstract class _RelatedBlog implements RelatedBlog {
  factory _RelatedBlog(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'body') final String? body,
          @JsonKey(name: 'thumbnailBlog') final String? thumbnailBlog,
          @JsonKey(name: 'account') final AccountBlog? account,
          @JsonKey(name: 'created_at') final String? created_at}) =
      _$RelatedBlogImpl;

  factory _RelatedBlog.fromJson(Map<String, dynamic> json) =
      _$RelatedBlogImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'thumbnailBlog')
  String? get thumbnailBlog;
  @override
  @JsonKey(name: 'account')
  AccountBlog? get account;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;

  /// Create a copy of RelatedBlog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelatedBlogImplCopyWith<_$RelatedBlogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
