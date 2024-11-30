// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'BlogData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogData _$BlogDataFromJson(Map<String, dynamic> json) {
  return _BlogData.fromJson(json);
}

/// @nodoc
mixin _$BlogData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailBlog')
  String? get thumbnailBlog => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'cateBlog')
  List<CateBlog>? get cateBlog => throw _privateConstructorUsedError;
  @JsonKey(name: 'account')
  AccountBlog? get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  List<CommentBlog>? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentReply')
  String? get commentReply => throw _privateConstructorUsedError;

  /// Serializes this BlogData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogDataCopyWith<BlogData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogDataCopyWith<$Res> {
  factory $BlogDataCopyWith(BlogData value, $Res Function(BlogData) then) =
      _$BlogDataCopyWithImpl<$Res, BlogData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'thumbnailBlog') String? thumbnailBlog,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'cateBlog') List<CateBlog>? cateBlog,
      @JsonKey(name: 'account') AccountBlog? account,
      @JsonKey(name: 'comments') List<CommentBlog>? comments,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'commentReply') String? commentReply});

  $AccountBlogCopyWith<$Res>? get account;
}

/// @nodoc
class _$BlogDataCopyWithImpl<$Res, $Val extends BlogData>
    implements $BlogDataCopyWith<$Res> {
  _$BlogDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? thumbnailBlog = freezed,
    Object? rating = freezed,
    Object? views = freezed,
    Object? cateBlog = freezed,
    Object? account = freezed,
    Object? comments = freezed,
    Object? created_at = freezed,
    Object? commentReply = freezed,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      cateBlog: freezed == cateBlog
          ? _value.cateBlog
          : cateBlog // ignore: cast_nullable_to_non_nullable
              as List<CateBlog>?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountBlog?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentBlog>?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      commentReply: freezed == commentReply
          ? _value.commentReply
          : commentReply // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BlogData
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
abstract class _$$BlogDataImplCopyWith<$Res>
    implements $BlogDataCopyWith<$Res> {
  factory _$$BlogDataImplCopyWith(
          _$BlogDataImpl value, $Res Function(_$BlogDataImpl) then) =
      __$$BlogDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'thumbnailBlog') String? thumbnailBlog,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'cateBlog') List<CateBlog>? cateBlog,
      @JsonKey(name: 'account') AccountBlog? account,
      @JsonKey(name: 'comments') List<CommentBlog>? comments,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'commentReply') String? commentReply});

  @override
  $AccountBlogCopyWith<$Res>? get account;
}

/// @nodoc
class __$$BlogDataImplCopyWithImpl<$Res>
    extends _$BlogDataCopyWithImpl<$Res, _$BlogDataImpl>
    implements _$$BlogDataImplCopyWith<$Res> {
  __$$BlogDataImplCopyWithImpl(
      _$BlogDataImpl _value, $Res Function(_$BlogDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? thumbnailBlog = freezed,
    Object? rating = freezed,
    Object? views = freezed,
    Object? cateBlog = freezed,
    Object? account = freezed,
    Object? comments = freezed,
    Object? created_at = freezed,
    Object? commentReply = freezed,
  }) {
    return _then(_$BlogDataImpl(
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      cateBlog: freezed == cateBlog
          ? _value._cateBlog
          : cateBlog // ignore: cast_nullable_to_non_nullable
              as List<CateBlog>?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountBlog?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentBlog>?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      commentReply: freezed == commentReply
          ? _value.commentReply
          : commentReply // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogDataImpl implements _BlogData {
  _$BlogDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'thumbnailBlog') this.thumbnailBlog,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'views') this.views,
      @JsonKey(name: 'cateBlog') final List<CateBlog>? cateBlog,
      @JsonKey(name: 'account') this.account,
      @JsonKey(name: 'comments') final List<CommentBlog>? comments,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'commentReply') this.commentReply})
      : _cateBlog = cateBlog,
        _comments = comments;

  factory _$BlogDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogDataImplFromJson(json);

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
  @JsonKey(name: 'rating')
  final int? rating;
  @override
  @JsonKey(name: 'views')
  final int? views;
  final List<CateBlog>? _cateBlog;
  @override
  @JsonKey(name: 'cateBlog')
  List<CateBlog>? get cateBlog {
    final value = _cateBlog;
    if (value == null) return null;
    if (_cateBlog is EqualUnmodifiableListView) return _cateBlog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'account')
  final AccountBlog? account;
  final List<CommentBlog>? _comments;
  @override
  @JsonKey(name: 'comments')
  List<CommentBlog>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'commentReply')
  final String? commentReply;

  @override
  String toString() {
    return 'BlogData(id: $id, title: $title, body: $body, thumbnailBlog: $thumbnailBlog, rating: $rating, views: $views, cateBlog: $cateBlog, account: $account, comments: $comments, created_at: $created_at, commentReply: $commentReply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.thumbnailBlog, thumbnailBlog) ||
                other.thumbnailBlog == thumbnailBlog) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.views, views) || other.views == views) &&
            const DeepCollectionEquality().equals(other._cateBlog, _cateBlog) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.commentReply, commentReply) ||
                other.commentReply == commentReply));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      body,
      thumbnailBlog,
      rating,
      views,
      const DeepCollectionEquality().hash(_cateBlog),
      account,
      const DeepCollectionEquality().hash(_comments),
      created_at,
      commentReply);

  /// Create a copy of BlogData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogDataImplCopyWith<_$BlogDataImpl> get copyWith =>
      __$$BlogDataImplCopyWithImpl<_$BlogDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogDataImplToJson(
      this,
    );
  }
}

abstract class _BlogData implements BlogData {
  factory _BlogData(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'body') final String? body,
          @JsonKey(name: 'thumbnailBlog') final String? thumbnailBlog,
          @JsonKey(name: 'rating') final int? rating,
          @JsonKey(name: 'views') final int? views,
          @JsonKey(name: 'cateBlog') final List<CateBlog>? cateBlog,
          @JsonKey(name: 'account') final AccountBlog? account,
          @JsonKey(name: 'comments') final List<CommentBlog>? comments,
          @JsonKey(name: 'created_at') final String? created_at,
          @JsonKey(name: 'commentReply') final String? commentReply}) =
      _$BlogDataImpl;

  factory _BlogData.fromJson(Map<String, dynamic> json) =
      _$BlogDataImpl.fromJson;

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
  @JsonKey(name: 'rating')
  int? get rating;
  @override
  @JsonKey(name: 'views')
  int? get views;
  @override
  @JsonKey(name: 'cateBlog')
  List<CateBlog>? get cateBlog;
  @override
  @JsonKey(name: 'account')
  AccountBlog? get account;
  @override
  @JsonKey(name: 'comments')
  List<CommentBlog>? get comments;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'commentReply')
  String? get commentReply;

  /// Create a copy of BlogData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogDataImplCopyWith<_$BlogDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
